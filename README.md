# prolog-become-king
A prolog example to determine who needs to die before somebody can become king.

## Use
Use the [online prolog intepreter] (http://swish.swi-prolog.org/) for your queries.
Just copy the Content of the (becomeKing script)[becomeKing.prolog] into the editor.

To find out how Robbert to becomes king, use this query:
~~~prolog
becomeKing(robbert,X)


~~~~


## Kings family overview

For easier understanding on how the people in this example are related, please see the family tee below. (Or directtly in the (Overview.txt)[Overview.txt])

~~~~



                                                    XX             X           X+
                                                    |XXXX        XXXXX       XXX|
                                                    |   XX     XXX   XXX    XXX |
                                                    |    XXX XXX       XX XXX   |
                                                    |      XXX          XXX     |
                                                    |                           |
                                                    |        King Martin        |
                                                    |                           |
                                                    +--------------+------------+
                                                                   |
                             +---------------------------------------------------------------------------+
                             |                                     |                                     |
                             |                                     |                                     |
                +------------+------------+         +--------------+-------------+         +-------------+-------------+
                |                         |         |                            |         |                           |
                |          John           |         |            Fiona           |         |          Robbert          |
                |                         |         |                            |         |                           |
                +------------+------------+         +--------------+-------------+         +-------------+-------------+
                             |                                     |                                     |
      +------------------+---+--------------+               +------+-----------+                         |
      |                  |                  |               |                  |                         |
+-----+-----+     +------+------+     +-----+-----+   +-----+-----+      +-----+-----+             +-----+------+
|           |     |             |     |           |   |           |      |           |             |            |
|   Mary    |     |   Jeffrey   |     |    Tim    |   |   Nick    |      |    Ana    |             |    Tom     |
|           |     |             |     |           |   |           |      |           |             |            |
+-----------+     +-------------+     +-----------+   +-----------+      +-----------+             +------------+
~~~





