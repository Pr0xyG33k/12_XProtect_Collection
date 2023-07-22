import psutil
import time
import math

def find_and_kill_proc(proc):
    """Kill processes of the same name and return True if at least one instance has been killed, False otherwise."""
    killed = False
    for process in psutil.process_iter(['name']):
        if process == proc:
            continue
        if process.info['name'] == proc.name():
            process.kill()
            if not killed:
                killed = True
    return killed

def research_process_by_name(name):
    """Return the process with the given name."""
    started = math.inf
    process = None
    for p in psutil.process_iter():
        if p.name() == name:
            try:
                if p.create_time() < started:
                    started = p.create_time()
                    process = psutil.Process(p.pid)
            except (psutil.AccessDenied, psutil.NoSuchProcess):
                pass
    return process

def run(process):
    """Keep looking for other instances of the same process name as long as the process is running."""
    while process.is_running():
        if not find_and_kill_proc(process):
            time.sleep(10)

if __name__ == '__main__':
    while True:
        try:
            proc_found = research_process_by_name("Client.exe")
            if proc_found:
                run(proc_found)
            else:
                time.sleep(10)
        except KeyboardInterrupt:
            exit()
        except (psutil.AccessDenied, psutil.NoSuchProcess):
            pass
