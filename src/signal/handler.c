/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   handler.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/20 17:51:43 by agadea            #+#    #+#             */
/*   Updated: 2024/04/28 15:14:42 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

/*
	SIGNALS         top

       When bash is interactive, in the absence of any traps, it ignores
       SIGTERM (so that kill 0 does not kill an interactive shell), and
       SIGINT is caught and handled (so that the wait builtin is
       interruptible).  In all cases, bash ignores SIGQUIT.  If job
       control is in effect, bash ignores SIGTTIN, SIGTTOU, and SIGTSTP.

       Non-builtin commands run by bash have signal handlers set to the
       values inherited by the shell from its parent.  When job control
       is not in effect, asynchronous commands ignore SIGINT and SIGQUIT
       in addition to these inherited handlers.  Commands run as a
       result of command substitution ignore the keyboard-generated job
       control signals SIGTTIN, SIGTTOU, and SIGTSTP.

       The shell exits by default upon receipt of a SIGHUP.  Before
       exiting, an interactive shell resends the SIGHUP to all jobs,
       running or stopped.  Stopped jobs are sent SIGCONT to ensure that
       they receive the SIGHUP.  To prevent the shell from sending the
       signal to a particular job, it should be removed from the jobs
       table with the disown builtin (see SHELL BUILTIN COMMANDS below)
       or marked to not receive SIGHUP using disown -h.

       If the huponexit shell option has been set with shopt, bash sends
       a SIGHUP to all jobs when an interactive login shell exits.

       If bash is waiting for a command to complete and receives a
       signal for which a trap has been set, the trap will not be
       executed until the command completes.  When bash is waiting for
       an asynchronous command via the wait builtin, the reception of a
       signal for which a trap has been set will cause the wait builtin
       to return immediately with an exit status greater than 128,
       immediately after which the trap is executed.

       When job control is not enabled, and bash is waiting for a
       foreground command to complete, the shell receives keyboard-
       generated signals such as SIGINT (usually generated by ^C) that
       users commonly intend to send to that command.  This happens
       because the shell and the command are in the same process group
       as the terminal, and ^C sends SIGINT to all processes in that
       process group.

       When bash is running without job control enabled and receives
       SIGINT while waiting for a foreground command, it waits until
       that foreground command terminates and then decides what to do
       about the SIGINT:

       1.     If the command terminates due to the SIGINT, bash
              concludes that the user meant to end the entire script,
              and acts on the SIGINT (e.g., by running a SIGINT trap or
              exiting itself);

       2.     If the command does not terminate due to SIGINT, the
              program handled the SIGINT itself and did not treat it as
              a fatal signal.  In that case, bash does not treat SIGINT
              as a fatal signal, either, instead assuming that the
              SIGINT was used as part of the program's normal operation
              (e.g., emacs uses it to abort editing commands) or
              deliberately discarded.  However, bash will run any trap
              set on SIGINT, as it does with any other trapped signal it
              receives while it is waiting for the foreground command to
              complete, for compatibility.
*/

/* 
	struct sigaction {
               void     (*sa_handler)(int);
               void     (*sa_sigaction)(int, siginfo_t *, void *);
               sigset_t   sa_mask;
               int        sa_flags;
               void     (*sa_restorer)(void);
           };
*/

int	g_signal;

void	display_newline_prompt(int sig)
{
	printf("\n");
	rl_on_new_line();
	rl_replace_line("", 0);
	if (g_signal != 1)
		rl_redisplay();
	g_signal = sig;
}

void	handle_sigint(int sig)
{
	display_newline_prompt(sig);
}

// void	handle_sigquit(int sig)
// {
// 	g_signal = sig;
// }

void	init_signal_handler(void)
{
	struct sigaction	touch_c;
	struct sigaction	touch_n;

	touch_c.sa_handler = handle_sigint;
	sigemptyset(&touch_c.sa_mask);
	touch_c.sa_flags = 0;
	sigaction(SIGINT, &touch_c, NULL);
	touch_n.sa_handler = SIG_IGN;
	sigemptyset(&touch_n.sa_mask);
	touch_n.sa_flags = 0;
	sigaction(SIGQUIT, &touch_n, NULL);
}
