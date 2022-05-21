# 학습내용
> LLDB

### LLVM

> Apple에서 진행한 Compiler에 필요한 Toolchain 개발 프로젝트

각 컴포넌트들의 재사용성을 중시해서, 모듈화가 잘 되어있다는 특징을 가짐

이렇게 모듈화 되어있는 컴포넌트들을 이용해 진행된 주요 서브 프로젝트들로

**LLVM Core, Clang, libc++, LLDB**등이 있음
> 

## LLDB

> LLVM의 Debugger Component를 개발하는 서브 프로젝트

LLVM 프로젝트를 통해 개발된 Clang Expression Parser, LLVM Diassembler 등 
Low-Level 컨트롤이 가능한 모듈들로 이루어져 있어, 기계어에 가까운 영역까지 디버깅 가능하다는 장점이 있음

C, C++, Objective-C, Swift를 지원

Xcode의 Debugger로 내장되어 있음
> 

### Teminal - 명령어

- lldb -n Finder
    - 실행중인 앱(Finder)의 프로세스에서도 LLDB를 연결해서 사용할 수 있음
    - **csrutil status**를 통해 System Integrity Protection을 disable 시켜야 가능
    

## LLDB 명령어

- (lldb) command [subcommand] -option “this is argument”
- Command, Subcommand, Option, Argument로 이루어짐

- **Command, Subcommand**
    - LLDB내의 Object의 이름임.
    - 이들은 모두 계층화 되어 있어 Command에 따라 Subcommand 종류가 다름
- **Option**
    - Command 뒤 어느 곳에서든 위치할 수 있음
    - -(hyphen)로 시작
- **Argument**
    - 공백이 포함 되는 경우도 있기 때문
    - “”로 묶어줄 수 있음
    
    EX) **(lldb) breakpoint set --file test.c --line 12**
    
    해석 : breakpoint ( **Command** )와 set ( Subcommand )를 이용하여
    
     --file option을 통해 test.c 파일 내
    
     --line option을 통해 12번째 라인에
    
    중단점을 set 해줌
    
- help
    - Subcommand, Option 리스트나 사용법을 보여주는 명령어
    - **LLDB에서 제공하는 Command가 궁금하다면,**
        - (lldb) help
    - **특정 Command의 Subcommand나, Option이 궁금하다면**
        - (lldb) help breakpoint
        - (lldb) help breakpoint **set**

- Apropos
    - 원하는 기능의 명령어가 있는지 관련 키워드를 통해 알아볼 수 있는 명령어
    - **# referent count를 체크할 수 있는 명령어**
        - (lldb) apropos “refence count”
            - 결과
            - `# The following commands may relate to 'reference count':
            # refcount -- Inspect the reference count data for a Swift object`