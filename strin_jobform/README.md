### Created by Strin#6904 ###

# Converted to Qbus by [710]Kmack710#0710 #

### All credit goes to Strin and Kmack710#0710 ###

### Thanks Strin and Kmack710#0710! :) ###





# strin_jobform

FiveM ESX Job Form Script





#### Job Form for every FiveM RP server. Easy and simple to configurate!



### Requirements:



- QBCore 

- discord webhook



### Configuration:



#### (Client) Form Config:



- police = Job (name) for the form

- pos = Position for 3d text to draw.

- label = Label for the form (3D text + NUI)

```lua

FORMS = {

    police = {

        pos = vector3(440.83834838867,-981.13397216797,30.689332962036),

        label = 'LSPD Form'

    },

    ambulance = {

        pos = vector3(298.89642333984,-584.50939941406,43.26086807251),

        label = 'EMS Form'

    }

}

```



#### (Server) Webhook Config:



- police = 'webhook url'


```lua

USING_QBUS = true

WEBHOOKS = {

    	police = '',

	ambulance = ''

}

```



### Features:

- Add as many forms as you want!

- Easy configuration.

- Nice UI.

- Discord Embed Messages



### Showcase: 

- Form UI



![Form UI](https://i.imgur.com/Fk6bZj7.png)



- Discord Message



![Embed Message](https://i.imgur.com/hTvxbZI.png)





**
