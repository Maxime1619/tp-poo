##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=gpioled-test
ConfigurationName      :=Debug
WorkspacePath          :=/home/maxime/tp-poo-2.0
ProjectPath            :=/home/maxime/tp-poo-2.0/gpioled-test
IntermediateDirectory  :=Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=maxime
Date                   :=05/26/21
CodeLitePath           :=/home/maxime/.codelite
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="gpioled-test.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            := $(shell pkg-config --libs piduino) $(shell pkg-config --libs UnitTest++) 
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)$(WorkspacePath)/src 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS := -std=c++14 $(shell pkg-config --cflags piduino) $(shell pkg-config --cflags UnitTest++) -g $(Preprocessors)
CFLAGS   :=  -g $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/up_src_Led.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_GpioLed.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d Debug || $(MakeDirCommand) Debug


$(IntermediateDirectory)/.d:
	@test -d Debug || $(MakeDirCommand) Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/up_src_Led.cpp$(ObjectSuffix): ../src/Led.cpp $(IntermediateDirectory)/up_src_Led.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/maxime/tp-poo-2.0/src/Led.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_Led.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_Led.cpp$(DependSuffix): ../src/Led.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_Led.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_Led.cpp$(DependSuffix) -MM ../src/Led.cpp

$(IntermediateDirectory)/up_src_Led.cpp$(PreprocessSuffix): ../src/Led.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_Led.cpp$(PreprocessSuffix) ../src/Led.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/maxime/tp-poo-2.0/gpioled-test/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/up_src_GpioLed.cpp$(ObjectSuffix): ../src/GpioLed.cpp $(IntermediateDirectory)/up_src_GpioLed.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/maxime/tp-poo-2.0/src/GpioLed.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_GpioLed.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_GpioLed.cpp$(DependSuffix): ../src/GpioLed.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_GpioLed.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_GpioLed.cpp$(DependSuffix) -MM ../src/GpioLed.cpp

$(IntermediateDirectory)/up_src_GpioLed.cpp$(PreprocessSuffix): ../src/GpioLed.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_GpioLed.cpp$(PreprocessSuffix) ../src/GpioLed.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r Debug/


