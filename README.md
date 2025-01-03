# COMP3016-CW2

## Youtube - 
</br>

## Dependencies:
GLFW, GLAD, GLM, STB image library. (all shown in labs). 
</br> 
</br>

## Game programming patterns:  
</br> 
Game loop pattern – This pattern has been used to keep the program continuously updating until the user decides to close the window. (If it didn’t update you wouldn’t be able to do anything)   </br>

![image](https://github.com/user-attachments/assets/4bf22254-60e5-4495-a39a-ea54df03eaee) 
</br>
Command Pattern – This pattern takes user input such as when they press wasd and turns it into commands like move forward, left, back and right.  </br>

![image](https://github.com/user-attachments/assets/a23e7ced-c926-4c43-a423-a7786895e9c9) 
</br>
Transform pattern – This patterns includes an objects position, rotation and scale in a object, this is used to create the transformation matrix in the game. </br>

![image](https://github.com/user-attachments/assets/c15d20cf-285d-48f3-b620-16407173c450)
</br> </br>

## Game mechanics:
</br>
Procederal terrain generation: The terrain is procedurally generated meaning it will be different every time you click play. It is coded mostly using the code provided in the labs however with changes for the terrain types and a second noise generator added to make the hills biome too so that it isn’t just large valleys. It uses 2 Perlin noise generators, fragment and vertex shaders to achieve this. (Here is the code for the noise generators) </br>

![image](https://github.com/user-attachments/assets/e1ce0413-d635-4161-a697-6e79022b7a44)
</br>
![image](https://github.com/user-attachments/assets/5516c745-6adb-4f15-923e-b4991763d5e8)
</br>

Camera movement: You are able to move the camera around the scene although this is mainly if not entirely code reused from the lab sessions. I did at one point have it stuck in a 3rd person perspective above the car model however when I was unable to get the car to move (I believe due to testing with logs it was moving at very small increments although I was unable to fix this) I set it back to moving the camera around the scene so you could actually see the terrain generation part. </br>
![image](https://github.com/user-attachments/assets/8bd8cd03-984a-4c9a-bce4-46be2c618f75) 
</br>

## Software engineering issues: </br>
The rendering, input, and game logic are all in the same CPP file and mostly all just in main(). This isn’t good design as it can effect the ability to add new bits/update parts of the code as the file just becomes longer and longer with more content in it. 
</br> </br>

## Sample Screens:

### Proceduraly generated terrain:
![image](https://github.com/user-attachments/assets/b908bae4-1369-4ab4-a3e1-ff78a6231cf8)
![image](https://github.com/user-attachments/assets/cd53e223-0498-44e0-8221-4f82ba3133ee) 
</br>
The Terrain above is shown the be proceduraly generated and it shows the terrain types, with the terrain changing based on the height, the heighest being the snow ontop of the mountains then as you go down the rocks and then the grassy hills. </br>
### Car model with signature: 
![image](https://github.com/user-attachments/assets/1be209ee-995b-4365-9fd3-2bd3dae02ce6)
</br>
## Exception and error handling:
</br>

![image](https://github.com/user-attachments/assets/1d006eae-ee2a-4538-a09d-9cb718c13556)
If the program fails to retrieve the texture for whatever reason (e.g. doesn't exist) it outputs the above message to the console
</br>
![image](https://github.com/user-attachments/assets/699b5c7b-daf3-4c73-9340-e52f41171215)
This is output on a failure to initialise Glad 
</br>
![image](https://github.com/user-attachments/assets/0c5d6f71-2c69-4f2f-b706-46215b715485)
This is output on a failure of GLFW </br>
I have manually tested the whole program either via looking at it and seeing what it has done/is doing and also by logging when trying to fix issues (How I knew the car was actually moving despite looking stationary). For other things such as the terrain generation for the main part I could just look at and make sure it was different each time and the textures also work this way just make sure it has them. The hills generation I added different colours for height levels so you can see that it isn’t infact flat as it is nearly impossible to see if its one colour because its all just green and the hills blend in. 
</br> </br>
## Further details to understand the prototype: </br>
The prototype is a 3d procedurally generated, textured scene that you can navigate around using your keyboard and mouse to control the camera. It is written in C++ using Glad and GLFW. It uses both vertex and fragment shaders for the textures of both the car and terrain.  </br> </br>

## What have I achieved/went wrong:
</br> 
 Although it is not the most advanced project and is quite limited using lots of the code given to us through lab sessions I am quite proud of what I have managed to create as I have found OpenGL to be rather complicated as it is one of those things that are all very specific keywords and ways you have to do things so in my opinion you have to have a very good understanding and in depth knowledge of it to do very well. I am quite happy with the fact I was able to create a procedurally generated terrain with another inside of it making nice looking maps for the scene, I am also very happy with the textured cube I was able to make as that turned out way more complicated then I believed and at one point became a rectangle when attempting to texture it.  
 </br>
I believe the main issue I had was time management, I did not give myself enough time to do the project due to taking a short 3 day break over christmas and the fact that my other coursework COMP3006 wanted as much content as a yearlong project almost meaning I had to spend an extremely long time working on that one and taking a 2 week break after coursework 1 for both modules was completed didn’t help with this. Along with this the fact I start to get easily distracted when things go wrong doesn’t help either. 
</br> Unfortunately I was also unable to get ASSIMP to work and it ended up failing every time I attempted to create the application properly.
 

</br> </br>

## External sources: </br> 
A large portion of the code especially the setup is from the labs sessions. I used StackOverflow to help with errors and researching around the shaders for the cube, [ glEnable function (Gl.h) - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/opengl/glenable) - for the depth testing to make it non see through, Reddit (r/opengl) - mainly looking for shaders and shader errors for cubes. </br>
</br>
My original contribution to this project is the car (cube) and its textures along with the terrain generation having 2 generations in one map creating the hills biomes inbetween the mountains instead of just having large valleys.




