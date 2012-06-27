Config-Encryptor
================

Encrypts or decrypts sections of a web.config file so you don't have to remember the command.

Setup
-----

1. Set `aspnetpath` to the path to your ASP.NET directory.
2. Set `site1` to the name of a site and `siteIDvar1` to that site's ID.  You can find that info in IIS.
3. Repeat step 2 for every site on the machine.
4. Add sites to the site names section as necessary.
5. Add a conditional statement for each site.

Future Revisions
----------------

This is clearly not useful if your machine hosts a ton of sites.  In the future, I would like to make it iterate through some collection of site names and IDs; at this point, however, the script works just perfectly for my small needs at work.