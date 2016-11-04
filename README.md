pss
=================
2016-11-04


A ps wrapper script that puts the result of ps in a date timestamped file.



What is this?
----------------
Basically, every time I call pss, it adds a pss-(&lt;prefix>-)?&lt;date>.txt (pss-2016-11-04__14-14-06.txt) file in a special directory (~/ps-traces by default).

prefix is replaced by the given argument if any. So for instance, pss blabla will put the ps trace in a file named pss-blabla-2016-11-04__14-14-06.txt


Why?
-------
I will do a trace when I believe the system is sane.

Then, when in doubt, I will do a trace again, so that I can compare a sane trace with a busy/suspicious one, and hopefully get something useful out of it.

That's all there is to it.


Installation
----------------

- download the pss.sh script, give it exec perms (chmod u+x pss.sh), and put it in the &lt;whereYouWant> directory
- create the following alias for your user (in your ~/.bash_profile): 
```bash
alias pss='<whereYouWant>/pss.sh'
```




