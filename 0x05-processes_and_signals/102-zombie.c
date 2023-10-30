#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
/**
 * main - entry point
 *
 * Return: 0
 */
int main(void)
{
	int i;
	pid_t child_pid;

	for (i = 0; i < 5; i++)
	{
		child_pid = fork();

		if (child_pid == -1)
		{
			perror("Fork failed");
			exit(1);
		}

		if (child_pid == 0)
		{/* This is the child process.*/
			exit(0);
		}
		else
		{/*This is the parent process*/
			printf("Zombie process created, PID: %d\n", child_pid);
		}
	}

	/*Sleep to allow parent process to complete before exiting*/
	sleep(5);

	return (0);
}
