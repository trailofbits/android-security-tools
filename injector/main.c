#include <stdio.h>
#include "config.h"
#include "injector.h"
#include "utils.h"

int main(int argc, char const *argv[]) {
  if (argc != 3) {
    printf("Usage: %s [process name] [library path]\n", argv[0]);
    return -1;
  }

  const char* process_name = argv[1];
  const char* library_path = argv[2];
  pid_t pid = GetPid(process_name);
  if (DEBUG) {
    printf("process name: %s, library path: %s, pid: %d\n", process_name, library_path, pid);
  }

  if (IsSelinuxEnabled()) {
    DisableSelinux();
  }

  /* InjectLibrary(pid, library_path); */
  RunLibhook(pid, library_path);
  return 0;
}
