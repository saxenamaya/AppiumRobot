import os
from selenium import webdriver
from selenium.webdriver.remote.command import Command


"""
def set_implicitly_wait(self, timeout):
    Sets the Implicit Wait Timeout to the given value
    self._current_application().implicitly_wait(timeout)
"""

def create_folder():
    os.mkdir("D:\\Test")

def set_implicitly_wait(self, time_to_wait):
        """
        Sets a sticky timeout to implicitly wait for an element to be found,
           or a command to complete. This method only needs to be called one
           time per session. To set the timeout for calls to
           execute_async_script, see set_script_timeout.

        :Args:
         - time_to_wait: Amount of time to wait (in seconds)
        :Usage:
            driver.implicitly_wait(30)
        """
        if self.w3c:
            self.execute(Command.SET_TIMEOUTS, {
                'implicit': int(float(time_to_wait) * 1000)})
        else:
            self.execute(Command.IMPLICIT_WAIT, {
                'ms': float(time_to_wait) * 1000})