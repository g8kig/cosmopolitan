/usr/bin/env echo ' -*-mode:sh;indent-tabs-mode:nil;tab-width:8;coding:utf-8-*-│
│ vi: set noet ft=sh ts=8 sts=8 sw=8 fenc=utf-8                            :vi │
╚────────────────────────────────────────────────────────────────'>/dev/null #*/
. libc/nt/codegen.sh

# The New Technology API
# » so many sections

# KERNEL32.DLL
#
#	Name							Actual							DLL		Arity
imp	''							CreateDirectoryW					kernel32	2
imp	''							CreateFileA						kernel32	7
imp	''							CreateFileMappingNumaW					kernel32	7
imp	''							CreateFileMappingW					kernel32	6
imp	''							CreateFileW						kernel32	7
imp	''							CreateNamedPipeW					kernel32	8
imp	''							CreatePipe						kernel32	4
imp	''							CreateProcessW						kernel32	10
imp	''							CreateSymbolicLinkW					kernel32	3
imp	''							CreateThread						kernel32	6
imp	''							DeleteFileW						kernel32	1
imp	''							DeviceIoControl						kernel32	8
imp	''							FindClose						kernel32	1
imp	''							FindFirstFileW						kernel32	2
imp	''							FindNextFileW						kernel32	2
imp	''							FlushFileBuffers					kernel32	1
imp	''							FlushViewOfFile						kernel32	2
imp	''							GenerateConsoleCtrlEvent				kernel32	2
imp	''							GetExitCodeProcess					kernel32	2
imp	''							GetFileAttributesW					kernel32	1
imp	''							LockFileEx						kernel32	6
imp	''							MapViewOfFileEx						kernel32	6
imp	''							MapViewOfFileExNuma					kernel32	7
imp	''							MoveFileExW						kernel32	3
imp	''							OpenProcess						kernel32	3
imp	''							ReOpenFile						kernel32	4	# TODO(jart): 6.2 and higher
imp	''							RemoveDirectoryW					kernel32	1
imp	''							SetCurrentDirectoryW					kernel32	1
imp	''							TerminateProcess					kernel32	2
imp	''							UnlockFileEx						kernel32	5
imp	''							UnmapViewOfFile						kernel32	1
imp	''							VirtualAllocEx						kernel32	5
imp	''							VirtualProtect						kernel32	4
imp	''							VirtualProtectEx					kernel32	5
imp	''							WaitForMultipleObjects					kernel32	4
imp	''							WaitForSingleObject					kernel32	2
imp	''							WriteProcessMemory					kernel32	5
imp	'AcquireSRWLockExclusive'				AcquireSRWLockExclusive					kernel32	1
imp	'AcquireSRWLockShared'					AcquireSRWLockShared					kernel32	1
imp	'AddDllDirectory'					AddDllDirectory						kernel32	1
imp	'AddVectoredContinueHandler'				AddVectoredContinueHandler				kernel32	2
imp	'AddVectoredExceptionHandler'				AddVectoredExceptionHandler				kernel32	2
imp	'AllocConsole'						AllocConsole						kernel32	0
imp	'AttachConsole'						AttachConsole						kernel32	1
imp	'CallNamedPipe'						CallNamedPipeW						kernel32	7
imp	'CallNamedPipeA'					CallNamedPipeA						kernel32	7
imp	'CancelIo'						CancelIo						kernel32	1
imp	'CancelIoEx'						CancelIoEx						kernel32	2
imp	'CancelSynchronousIo'					CancelSynchronousIo					kernel32	1
imp	'CheckRemoteDebuggerPresent'				CheckRemoteDebuggerPresent				kernel32	2
imp	'ClearCommBreak'					ClearCommBreak						kernel32	1
imp	'CloseHandle'						CloseHandle						kernel32	1
imp	'ClosePseudoConsole'					ClosePseudoConsole					kernel32	1	# Windows 10+
imp	'ConnectNamedPipe'					ConnectNamedPipe					kernel32	2
imp	'ContinueDebugEvent'					ContinueDebugEvent					kernel32	3
imp	'CopyFile'						CopyFileW						kernel32	3
imp	'CreateEvent'						CreateEventW						kernel32	4
imp	'CreateEventA'						CreateEventA						kernel32	4
imp	'CreateEventEx'						CreateEventExW						kernel32	4
imp	'CreateHardLink'					CreateHardLinkW						kernel32	3
imp	'CreateIoCompletionPort'				CreateIoCompletionPort					kernel32	4
imp	'CreatePseudoConsole'					CreatePseudoConsole					kernel32	5	# Windows 10+
imp	'CreateSemaphore'					CreateSemaphoreW					kernel32	4
imp	'CreateToolhelp32Snapshot'				CreateToolhelp32Snapshot				kernel32	2
imp	'CreateWaitableTimer'					CreateWaitableTimerW					kernel32	3
imp	'CreateWaitableTimerEx'					CreateWaitableTimerExW					kernel32	4
imp	'DebugActiveProcess'					DebugActiveProcess					kernel32	1
imp	'DebugActiveProcessStop'				DebugActiveProcessStop					kernel32	1
imp	'DebugBreakProcess'					DebugBreakProcess					kernel32	1
imp	'DeleteCriticalSection'					DeleteCriticalSection					kernel32	1
imp	'DeleteProcThreadAttributeList'				DeleteProcThreadAttributeList				kernel32	1
imp	'DisconnectNamedPipe'					DisconnectNamedPipe					kernel32	1
imp	'DuplicateHandle'					DuplicateHandle						kernel32	7
imp	'EnterCriticalSection'					EnterCriticalSection					kernel32	1
imp	'ExitProcess'						ExitProcess						kernel32	1	# a.k.a. RtlExitUserProcess
imp	'ExitThread'						ExitThread						kernel32	1
imp	'FatalExit'						FatalExit						kernel32	1
imp	'FillConsoleOutputAttribute'				FillConsoleOutputAttribute				kernel32	5
imp	'FillConsoleOutputCharacter'				FillConsoleOutputCharacterW				kernel32	5
imp	'FindFirstFileEx'					FindFirstFileExW					kernel32	6
imp	'FindFirstVolume'					FindFirstVolumeW					kernel32	2
imp	'FindNextVolume'					FindNextVolumeW						kernel32	3
imp	'FindVolumeClose'					FindVolumeClose						kernel32	1
imp	'FlushConsoleInputBuffer'				FlushConsoleInputBuffer					kernel32	1
imp	'FormatMessage'						FormatMessageW						kernel32	7
imp	'FormatMessageA'					FormatMessageA						kernel32	7
imp	'FreeConsole'						FreeConsole						kernel32	0
imp	'FreeEnvironmentStrings'				FreeEnvironmentStringsW					kernel32	1
imp	'FreeLibrary'						FreeLibrary						kernel32	1
imp	'FreeResource'						FreeResource						kernel32	1
imp	'GetCommandLine'					GetCommandLineW						kernel32	0
imp	'GetCompressedFileSize'					GetCompressedFileSizeW					kernel32	2
imp	'GetComputerNameEx'					GetComputerNameExW					kernel32	3
imp	'GetConsoleCP'						GetConsoleCP						kernel32	0
imp	'GetConsoleCursorInfo'					GetConsoleCursorInfo					kernel32	2
imp	'GetConsoleMode'					GetConsoleMode						kernel32	2
imp	'GetConsoleOutputCP'					GetConsoleOutputCP					kernel32	0
imp	'GetConsoleScreenBufferInfo'				GetConsoleScreenBufferInfo				kernel32	2
imp	'GetConsoleScreenBufferInfoEx'				GetConsoleScreenBufferInfoEx				kernel32	2
imp	'GetConsoleSelectionInfo'				GetConsoleSelectionInfo					kernel32	1
imp	'GetConsoleTitle'					GetConsoleTitleW					kernel32	2
imp	'GetConsoleWindow'					GetConsoleWindow					kernel32	0
imp	'GetCurrentDirectory'					GetCurrentDirectoryW					kernel32	2
imp	'GetCurrentProcessId'					GetCurrentProcessId					kernel32	0
imp	'GetCurrentProcessorNumberEx'				GetCurrentProcessorNumberEx				kernel32	1
imp	'GetCurrentThread'					GetCurrentThread					kernel32	0
imp	'GetCurrentThreadId'					GetCurrentThreadId					kernel32	0
imp	'GetDynamicTimeZoneInformation'				GetDynamicTimeZoneInformation				kernel32	1
imp	'GetEnvironmentStrings'					GetEnvironmentStringsW					kernel32	1
imp	'GetEnvironmentVariable'				GetEnvironmentVariableW					kernel32	3
imp	'GetExitCodeThread'					GetExitCodeThread					kernel32	2
imp	'GetFileAttributesEx'					GetFileAttributesExW					kernel32	3
imp	'GetFileInformationByHandle'				GetFileInformationByHandle				kernel32	2
imp	'GetFileInformationByHandleEx'				GetFileInformationByHandleEx				kernel32	4
imp	'GetFileSize'						GetFileSize						kernel32	2
imp	'GetFileSizeEx'						GetFileSizeEx						kernel32	2
imp	'GetFileTime'						GetFileTime						kernel32	4
imp	'GetFileType'						GetFileType						kernel32	1
imp	'GetFinalPathNameByHandle'				GetFinalPathNameByHandleW				kernel32	4
imp	'GetFullPathName'					GetFullPathNameW					kernel32	4
imp	'GetShortPathName'					GetShortPathNameW					kernel32	3
imp	'GetHandleInformation'					GetHandleInformation					kernel32	2
imp	'GetLargestConsoleWindowSize'				GetLargestConsoleWindowSize				kernel32	1
imp	'GetLastError'						GetLastError						kernel32	0
imp	'GetLogicalDrives'					GetLogicalDrives					kernel32	0
imp	'GetLogicalDriveStringsA'				GetLogicalDriveStringsA					kernel32	2
imp	'GetMaximumProcessorCount'				GetMaximumProcessorCount				kernel32	1	# Windows 7+
imp	'GetModuleFileName'					GetModuleFileNameW					kernel32	3
imp	'GetModuleHandle'					GetModuleHandleA					kernel32	1
imp	'GetModuleHandleEx'					GetModuleHandleExW					kernel32	3
imp	'GetModuleHandleW'					GetModuleHandleW					kernel32	1
imp	'GetNamedPipeInfo'					GetNamedPipeInfo					kernel32	5
imp	'GetNumaProcessorNodeEx'				GetNumaProcessorNodeEx					kernel32	2
imp	'GetNumberOfConsoleInputEvents'				GetNumberOfConsoleInputEvents				kernel32	2
imp	'GetNumberOfConsoleMouseButtons'			GetNumberOfConsoleMouseButtons				kernel32	1
imp	'GetOverlappedResult'					GetOverlappedResult					kernel32	4
imp	'GetOverlappedResultEx'					GetOverlappedResultEx					kernel32	5
imp	'GetPriorityClass'					GetPriorityClass					kernel32	1
imp	'GetProcAddress'					GetProcAddress						kernel32	2
imp	'GetProcessAffinityMask'				GetProcessAffinityMask					kernel32	3
imp	'GetProcessHandleCount'					GetProcessHandleCount					kernel32	2
imp	'GetProcessHeap'					GetProcessHeap						kernel32	0
imp	'GetProcessHeaps'					GetProcessHeaps						kernel32	2
imp	'GetProcessId'						GetProcessId						kernel32	1
imp	'GetProcessIdOfThread'					GetProcessIdOfThread					kernel32	1
imp	'GetProcessInformation'					GetProcessInformation					kernel32	4
imp	'GetProcessIoCounters'					GetProcessIoCounters					kernel32	2
imp	'GetProcessPriorityBoost'				GetProcessPriorityBoost					kernel32	2
imp	'GetProcessTimes'					GetProcessTimes						kernel32	5
imp	'GetProcessWorkingSetSize'				GetProcessWorkingSetSize				kernel32	3
imp	'GetProcessWorkingSetSizeEx'				GetProcessWorkingSetSizeEx				kernel32	4
imp	'GetQueuedCompletionStatus'				GetQueuedCompletionStatus				kernel32	5
imp	'GetQueuedCompletionStatusEx'				GetQueuedCompletionStatusEx				kernel32	6
imp	'GetStartupInfo'					GetStartupInfoW						kernel32	1
imp	'GetStdHandle'						GetStdHandle						kernel32	1
imp	'GetSystemDirectory'					GetSystemDirectoryW					kernel32	2
imp	'GetSystemDirectoryA'					GetSystemDirectoryA					kernel32	2
imp	'GetSystemInfo'						GetSystemInfo						kernel32	1
imp	'GetSystemTime'						GetSystemTime						kernel32	1
imp	'GetSystemTimeAdjustment'				GetSystemTimeAdjustment					kernel32	3
imp	'GetSystemTimeAsFileTime'				GetSystemTimeAsFileTime					kernel32	1
imp	'GetSystemTimePreciseAsFileTime'			GetSystemTimePreciseAsFileTime				kernel32	1
imp	'GetSystemTimes'					GetSystemTimes						kernel32	3
imp	'GetTempPath'						GetTempPathW						kernel32	2
imp	'GetTempPathA'						GetTempPathA						kernel32	2
imp	'GetThreadContext'					GetThreadContext					kernel32	2
imp	'GetThreadDescription'					GetThreadDescription					kernel32	2
imp	'GetThreadIOPendingFlag'				GetThreadIOPendingFlag					kernel32	2
imp	'GetThreadId'						GetThreadId						kernel32	1
imp	'GetThreadPriority'					GetThreadPriority					kernel32	1
imp	'GetThreadPriorityBoost'				GetThreadPriorityBoost					kernel32	2
imp	'GetThreadTimes'					GetThreadTimes						kernel32	5
imp	'GetTickCount64'					GetTickCount64						kernel32	0
imp	'GetTimeZoneInformation'				GetTimeZoneInformation					kernel32	1
imp	'GetVersionEx'						GetVersionExW						kernel32	1
imp	'GetVolumeInformationByHandle'				GetVolumeInformationByHandleW				kernel32	8
imp	'GetVolumePathName'					GetVolumePathNameW					kernel32	3
imp	'GetWindowsDirectory'					GetWindowsDirectoryW					kernel32	2
imp	'GetWindowsDirectoryA'					GetWindowsDirectoryA					kernel32	2
imp	'GetOEMCP'						GetOEMCP						kernel32	0
imp	'GetACP'						GetACP							kernel32	0
imp	'GetCPInfoEx'						GetCPInfoExW						kernel32	3
imp	'GlobalAlloc'						GlobalAlloc						kernel32	2
imp	'GlobalFree'						GlobalFree						kernel32	1
imp	'GlobalLock'						GlobalLock						kernel32	1
imp	'GlobalMemoryStatusEx'					GlobalMemoryStatusEx					kernel32	1
imp	'GlobalUnlock'						GlobalUnlock						kernel32	1
imp	'HeapAlloc'						HeapAlloc						kernel32	3
imp	'HeapCompact'						HeapCompact						kernel32	2
imp	'HeapCreate'						HeapCreate						kernel32	3
imp	'HeapDestroy'						HeapDestroy						kernel32	1
imp	'HeapFree'						HeapFree						kernel32	3
imp	'HeapReAlloc'						HeapReAlloc						kernel32	4
imp	'InitializeContext'					InitializeContext					kernel32	4	# Windows 7+
imp	'InitializeCriticalSection'				InitializeCriticalSection				kernel32	1
imp	'InitializeCriticalSectionAndSpinCount'			InitializeCriticalSectionAndSpinCount			kernel32	2
imp	'InitializeProcThreadAttributeList'			InitializeProcThreadAttributeList			kernel32	4
imp	'InitializeSRWLock'					InitializeSRWLock					kernel32	1
imp	'IsWow64Process2'					IsWow64Process2						kernel32	3
imp	'LeaveCriticalSection'					LeaveCriticalSection					kernel32	1
imp	'LoadLibrary'						LoadLibraryW						kernel32	1
imp	'LoadLibraryA'						LoadLibraryA						kernel32	1
imp	'LoadLibraryEx'						LoadLibraryExW						kernel32	3
imp	'LoadResource'						LoadResource						kernel32	2
imp	'LocalFree'						LocalFree						kernel32	1
imp	'LockFile'						LockFile						kernel32	5
imp	'LockResource'						LockResource						kernel32	1
imp	'MoveFile'						MoveFileW						kernel32	2
imp	'MultiByteToWideChar'					MultiByteToWideChar					kernel32	6
imp	'OfferVirtualMemory'					OfferVirtualMemory					kernel32	3
imp	'OpenThread'						OpenThread						kernel32	3
imp	'PeekConsoleInput'					PeekConsoleInputW					kernel32	4
imp	'PeekNamedPipe'						PeekNamedPipe						kernel32	6
imp	'PostQueuedCompletionStatus'				PostQueuedCompletionStatus				kernel32	4
imp	'PrefetchVirtualMemory'					PrefetchVirtualMemory					kernel32	4
imp	'Process32First'					Process32FirstW						kernel32	2
imp	'Process32Next'						Process32NextW						kernel32	2
imp	'PulseEvent'						PulseEvent						kernel32	1
imp	'PurgeComm'						PurgeComm						kernel32	2
imp	'QueryPerformanceCounter'				QueryPerformanceCounter					kernel32	1	# Windows 7+
imp	'QueryPerformanceFrequency'				QueryPerformanceFrequency				kernel32	1
imp	'QueryUnbiasedInterruptTime'				QueryUnbiasedInterruptTime				kernel32	1	# Windows 7+
imp	'ReadConsole'						ReadConsoleW						kernel32	5
imp	'ReadConsoleInput'					ReadConsoleInputW					kernel32	4
imp	'ReadConsoleOutput'					ReadConsoleOutputW					kernel32	5
imp	'ReadConsoleOutputAttribute'				ReadConsoleOutputAttribute				kernel32	5
imp	'ReadConsoleOutputCharacter'				ReadConsoleOutputCharacterW				kernel32	5
imp	'ReadFile'						ReadFile						kernel32	5
imp	'ReadFileEx'						ReadFileEx						kernel32	5
imp	'ReadFileScatter'					ReadFileScatter						kernel32	5
imp	'RegisterWaitForSingleObject'				RegisterWaitForSingleObject				kernel32	6
imp	'ReleaseMutex'						ReleaseMutex						kernel32	1
imp	'ReleaseSRWLockExclusive'				ReleaseSRWLockExclusive					kernel32	1
imp	'ReleaseSRWLockShared'					ReleaseSRWLockShared					kernel32	1
imp	'ReleaseSemaphore'					ReleaseSemaphore					kernel32	3
imp	'RemoveVectoredContinueHandler'				RemoveVectoredContinueHandler				kernel32	1
imp	'RemoveVectoredExceptionHandler'			RemoveVectoredExceptionHandler				kernel32	1
imp	'ResetEvent'						ResetEvent						kernel32	1
imp	'ResizePseudoConsole'					ResizePseudoConsole					kernel32	2	# Windows 10+
imp	'ResumeThread'						ResumeThread						kernel32	1
imp	'SetConsoleActiveScreenBuffer'				SetConsoleActiveScreenBuffer				kernel32	1	# TODO(jart): 6.2 and higher
imp	'SetConsoleCP'						SetConsoleCP						kernel32	1	# TODO(jart): 6.2 and higher
imp	'SetConsoleCtrlHandler'					SetConsoleCtrlHandler					kernel32	2
imp	'SetConsoleCursorInfo'					SetConsoleCursorInfo					kernel32	2
imp	'SetConsoleCursorPosition'				SetConsoleCursorPosition				kernel32	2
imp	'SetConsoleMode'					SetConsoleMode						kernel32	2
imp	'SetConsoleOutputCP'					SetConsoleOutputCP					kernel32	1
imp	'SetConsoleScreenBufferInfoEx'				SetConsoleScreenBufferInfoEx				kernel32	2
imp	'SetConsoleScreenBufferSize'				SetConsoleScreenBufferSize				kernel32	2
imp	'SetConsoleTitle'					SetConsoleTitleW					kernel32	1
imp	'SetConsoleWindowInfo'					SetConsoleWindowInfo					kernel32	3
imp	'SetCriticalSectionSpinCount'				SetCriticalSectionSpinCount				kernel32	2
imp	'SetDefaultDllDirectories'				SetDefaultDllDirectories				kernel32	1	# Windows 8+, KB2533623 on Windows 7
imp	'SetEndOfFile'						SetEndOfFile						kernel32	1
imp	'SetEnvironmentVariable'				SetEnvironmentVariableW					kernel32	2
imp	'SetErrorMode'						SetErrorMode						kernel32	1
imp	'SetEvent'						SetEvent						kernel32	1
imp	'SetFileAttributes'					SetFileAttributesW					kernel32	2
imp	'SetFileCompletionNotificationModes'			SetFileCompletionNotificationModes			kernel32	2
imp	'SetFileInformationByHandle'				SetFileInformationByHandle				kernel32	4
imp	'SetFilePointer'					SetFilePointer						kernel32	4
imp	'SetFileTime'						SetFileTime						kernel32	4
imp	'SetFileValidData'					SetFileValidData					kernel32	2
imp	'SetHandleCount'					SetHandleCount						kernel32	1
imp	'SetHandleInformation'					SetHandleInformation					kernel32	3
imp	'SetLastError'						SetLastError						kernel32	1
imp	'SetNamedPipeHandleState'				SetNamedPipeHandleState					kernel32	4
imp	'SetPriorityClass'					SetPriorityClass					kernel32	2
imp	'SetProcessAffinityMask'				SetProcessAffinityMask					kernel32	2
imp	'SetProcessPriorityBoost'				SetProcessPriorityBoost					kernel32	2
imp	'SetProcessWorkingSetSize'				SetProcessWorkingSetSize				kernel32	3
imp	'SetProcessWorkingSetSizeEx'				SetProcessWorkingSetSizeEx				kernel32	4
imp	'SetStdHandle'						SetStdHandle						kernel32	2
imp	'SetThreadAffinityMask'					SetThreadAffinityMask					kernel32	2
imp	'SetThreadContext'					SetThreadContext					kernel32	2
imp	'SetThreadDescription'					SetThreadDescription					kernel32	2
imp	'SetThreadPriority'					SetThreadPriority					kernel32	2
imp	'SetThreadPriorityBoost'				SetThreadPriorityBoost					kernel32	2
imp	'SetUnhandledExceptionFilter'				SetUnhandledExceptionFilter				kernel32	1
imp	'SetWaitableTimer'					SetWaitableTimer					kernel32	6
imp	'Sleep'							Sleep							kernel32	1
imp	'SleepEx'						SleepEx							kernel32	2
imp	'SuspendThread'						SuspendThread						kernel32	1
imp	'SystemTimeToFileTime'					SystemTimeToFileTime					kernel32	2
imp	'TerminateThread'					TerminateThread						kernel32	2
imp	'TlsAlloc'						TlsAlloc						kernel32	0
imp	'TlsFree'						TlsFree							kernel32	1
imp	'TlsGetValue'						TlsGetValue						kernel32	1
imp	'TlsSetValue'						TlsSetValue						kernel32	2
imp	'TransactNamedPipe'					TransactNamedPipe					kernel32	7
imp	'TransmitCommChar'					TransmitCommChar					kernel32	2
imp	'TryAcquireSRWLockExclusive'				TryAcquireSRWLockExclusive				kernel32	1
imp	'TryAcquireSRWLockShared'				TryAcquireSRWLockShared					kernel32	1
imp	'TryEnterCriticalSection'				TryEnterCriticalSection					kernel32	1
imp	'UnlockFile'						UnlockFile						kernel32	5
imp	'UnmapViewOfFile2'					UnmapViewOfFile2					kernel32	2
imp	'UnmapViewOfFileEx'					UnmapViewOfFileEx					kernel32	3
imp	'UpdateProcThreadAttribute'				UpdateProcThreadAttribute				kernel32	7
imp	'VirtualFree'						VirtualFree						kernel32	3
imp	'VirtualLock'						VirtualLock						kernel32	2
imp	'VirtualQuery'						VirtualQuery						kernel32	3
imp	'VirtualQueryEx'					VirtualQueryEx						kernel32	4
imp	'VirtualUnlock'						VirtualUnlock						kernel32	2
imp	'WaitForMultipleObjectsEx'				WaitForMultipleObjectsEx				kernel32	5
imp	'WaitForSingleObjectEx'					WaitForSingleObjectEx					kernel32	3
imp	'WideCharToMultiByte'					WideCharToMultiByte					kernel32	8
imp	'WriteConsole'						WriteConsoleW						kernel32	5
imp	'WriteConsoleInput'					WriteConsoleInputW					kernel32	4
imp	'WriteConsoleOutputAttribute'				WriteConsoleOutputAttribute				kernel32	5
imp	'WriteConsoleOutputCharacter'				WriteConsoleOutputCharacterW				kernel32	5
imp	'WriteFile'						WriteFile						kernel32	5
imp	'WriteFileEx'						WriteFileEx						kernel32	5
imp	'WriteFileGather'					WriteFileGather						kernel32	5

# ADVAPI32.DLL
#
#	Name							Actual							DLL		Hint	Arity
imp	'AccessCheck'						AccessCheck						advapi32	8
imp	'AdjustTokenPrivileges'					AdjustTokenPrivileges					advapi32	6
imp	'CreateProcessAsUser'					CreateProcessAsUserW					advapi32	11
imp	'DeregisterEventSource'					DeregisterEventSource					advapi32	1
imp	'DuplicateToken'					DuplicateToken						advapi32	3
imp	'DuplicateTokenEx'					DuplicateTokenEx					advapi32	6
imp	'GetFileSecurity'					GetFileSecurityW					advapi32	5
imp	'GetUserName'						GetUserNameW						advapi32	2
imp	'ImpersonateSelf'					ImpersonateSelf						advapi32	1
imp	'InitiateShutdown'					InitiateShutdownW					advapi32	5
imp	'LookupPrivilegeValue'					LookupPrivilegeValueW					advapi32	3
imp	'MapGenericMask'					MapGenericMask						advapi32	2
imp	'OpenProcessToken'					OpenProcessToken					advapi32	3
imp	'OpenThreadToken'					OpenThreadToken						advapi32	4
imp	'RegCloseKey'						RegCloseKey						advapi32	1
imp	'RegConnectRegistry'					RegConnectRegistryW					advapi32	3
imp	'RegCreateKey'						RegCreateKeyW						advapi32	3
imp	'RegCreateKeyEx'					RegCreateKeyExW						advapi32	9
imp	'RegDeleteKey'						RegDeleteKeyW						advapi32	2
imp	'RegDeleteKeyEx'					RegDeleteKeyExW						advapi32	4
imp	'RegDeleteTree'						RegDeleteTreeW						advapi32	2
imp	'RegDeleteValue'					RegDeleteValueW						advapi32	2
imp	'RegDisablePredefinedCache'				RegDisablePredefinedCache				advapi32	1
imp	'RegDisableReflectionKey'				RegDisableReflectionKey					advapi32	1
imp	'RegEnableReflectionKey'				RegEnableReflectionKey					advapi32	1
imp	'RegEnumKey'						RegEnumKeyW						advapi32	4
imp	'RegEnumKeyEx'						RegEnumKeyExW						advapi32	8
imp	'RegEnumValue'						RegEnumValueW						advapi32	8
imp	'RegFlushKey'						RegFlushKey						advapi32	1
imp	'RegGetKeySecurity'					RegGetKeySecurity					advapi32	4
imp	'RegGetValue'						RegGetValueW						advapi32	7
imp	'RegLoadKey'						RegLoadKeyW						advapi32	3
imp	'RegNotifyChangeKeyValue'				RegNotifyChangeKeyValue					advapi32	5
imp	'RegOpenCurrentUser'					RegOpenCurrentUser					advapi32	2
imp	'RegOpenKeyEx'						RegOpenKeyExW						advapi32	5
imp	'RegOpenKeyExA'						RegOpenKeyExA						advapi32	5
imp	'RegOpenUserClassesRoot'				RegOpenUserClassesRoot					advapi32	4
imp	'RegOverridePredefKey'					RegOverridePredefKey					advapi32	2
imp	'RegQueryInfoKey'					RegQueryInfoKeyW					advapi32	12
imp	'RegQueryMultipleValues'				RegQueryMultipleValuesW					advapi32	5
imp	'RegQueryReflectionKey'					RegQueryReflectionKey					advapi32	2
imp	'RegQueryValue'						RegQueryValueW						advapi32	4
imp	'RegQueryValueEx'					RegQueryValueExW					advapi32	6
imp	'RegReplaceKey'						RegReplaceKeyW						advapi32	4
imp	'RegRestoreKey'						RegRestoreKeyW						advapi32	3
imp	'RegSaveKey'						RegSaveKeyW						advapi32	3
imp	'RegSetKeySecurity'					RegSetKeySecurity					advapi32	3
imp	'RegSetValue'						RegSetValueW						advapi32	5
imp	'RegSetValueEx'						RegSetValueExW						advapi32	6
imp	'RegUnLoadKey'						RegUnLoadKeyW						advapi32	2
imp	'RegisterEventSource'					RegisterEventSourceW					advapi32	2
imp	'ReportEvent'						ReportEventW						advapi32	9
imp	'ReportEventA'						ReportEventA						advapi32	9
imp	'RevertToSelf'						RevertToSelf						advapi32	0
imp	'TraceSetInformation'					TraceSetInformation					advapi32 # Windows 7+

# USER32.DLL
#
#	Name							Actual							DLL		Arity
imp	'AdjustWindowRect'					AdjustWindowRect					user32		3
imp	'AdjustWindowRectEx'					AdjustWindowRectEx					user32		4
imp	'AnimateWindow'						AnimateWindow						user32		3
imp	'AppendMenuA'						AppendMenuA						user32		4
imp	'AppendMenu'						AppendMenuW						user32		4
imp	'BeginPaint'						BeginPaint						user32		2
imp	'BringWindowToTop'					BringWindowToTop					user32		1
imp	'CallNextHookEx'					CallNextHookEx						user32		4
imp	'CloseWindow'						CloseWindow						user32		1
imp	'ClientToScreen'					ClientToScreen						user32		2
imp	'ClipCursor'						ClipCursor						user32		1
imp	'CloseClipboard'					CloseClipboard						user32		0
imp	'CreateIconIndirect'					CreateIconIndirect					user32		1
imp	'CreateMenu'						CreateMenu						user32		0
imp	'CreatePopupMenu'					CreatePopupMenu						user32		0
imp	'CreateWindowEx'					CreateWindowExW						user32		12
imp	'DefWindowProc'						DefWindowProcW						user32		4
imp	'DeleteMenu'						DeleteMenu						user32		3
imp	'DestroyIcon'						DestroyIcon						user32		1
imp	'DestroyMenu'						DestroyMenu						user32		1
imp	'DestroyWindow'						DestroyWindow						user32		1
imp	'DispatchMessage'					DispatchMessageW					user32		1
imp	'DrawText'						DrawTextW						user32		5
imp	'DrawTextEx'						DrawTextExW						user32		6
imp	'EmptyClipboard'					EmptyClipboard						user32		0
imp	'EndPaint'						EndPaint						user32		2
imp	'EnumChildWindows'					EnumChildWindows					user32		3
imp	'FillRect'						FillRect						user32		3
imp	'FindWindow'						FindWindowW						user32		2
imp	'FindWindowEx'						FindWindowExW						user32		4
imp	'GetAsyncKeyState'					GetAsyncKeyState					user32		1
imp	'GetClientRect'						GetClientRect						user32		2
imp	'GetClipboardData'					GetClipboardData					user32		1
imp	'GetCursor'						GetCursor						user32		0
imp	'GetCursorPos'						GetCursorPos						user32		1
imp	'GetDC'							GetDC							user32		1
imp	'GetDesktopWindow'					GetDesktopWindow					user32		0
imp	'GetKeyState'						GetKeyState						user32		1
imp	'GetKeyboardLayout'					GetKeyboardLayout					user32		1
imp	'GetMenu'						GetMenu							user32		1
imp	'GetMessage'						GetMessageW						user32		4
imp	'GetMonitorInfo'					GetMonitorInfoW						user32		2
imp	'GetRawInputData'					GetRawInputData						user32		5
imp	'GetParent'						GetParent						user32		1
imp	'GetShellWindow'					GetShellWindow						user32		0
imp	'GetSystemMenu'						GetSystemMenu						user32		2
imp	'GetSystemMetrics'					GetSystemMetrics					user32		1
imp	'GetWindow'						GetWindow						user32		2
imp	'GetWindowPlacement'					GetWindowPlacement					user32		2
imp	'GetWindowRect'						GetWindowRect						user32		2
imp	'GetWindowText'						GetWindowTextW						user32		3
imp	'InsertMenu'						InsertMenuW						user32		5
imp	'InvalidateRect'					InvalidateRect						user32		3
imp	'IsChild'						IsChild							user32		2
imp	'IsIconic'						IsIconic						user32		1
imp	'IsMenu'						IsMenu							user32		1
imp	'IsWindow'						IsWindow						user32		1
imp	'IsWindowVisible'					IsWindowVisible						user32		1
imp	'IsZoomed'						IsZoomed						user32		1
imp	'KillTimer'						KillTimer						user32		2
imp	'LoadCursor'						LoadCursorW						user32		2
imp	'LoadIcon'						LoadIconW						user32		2
imp	'LoadImage'						LoadImageW						user32		6
imp	'MapVirtualKeyEx'					MapVirtualKeyExW					user32		3
imp	'MessageBox'						MessageBoxW						user32		4
imp	'MessageBoxEx'						MessageBoxExW						user32		5
imp	'MoveWindow'						MoveWindow						user32		6
imp	'MonitorFromPoint'					MonitorFromPoint					user32		2
imp	'MonitorFromWindow'					MonitorFromWindow					user32		2
imp	'OpenClipboard'						OpenClipboard						user32		1
imp	'PeekMessage'						PeekMessageW						user32		5
imp	'PostMessage'						PostMessageW						user32		4
imp	'PostQuitMessage'					PostQuitMessage						user32		1
imp	'PtInRect'						PtInRect						user32		2
imp	'RedrawWindow'						RedrawWindow						user32		4
imp	'RegisterClass'						RegisterClassW						user32		1
imp	'RegisterClassEx'					RegisterClassExW					user32		1
imp	'RegisterRawInputDevices'				RegisterRawInputDevices					user32		3
imp	'ReleaseCapture'					ReleaseCapture						user32		0
imp	'ReleaseDC'						ReleaseDC						user32		2
imp	'ScreenToClient'					ScreenToClient						user32		2
imp	'SetClipboardData'					SetClipboardData					user32		2
imp	'SetCursorPos'						SetCursorPos						user32		2
imp	'SendMessage'						SendMessageW						user32		4
imp	'SetCapture'						SetCapture						user32		1
imp	'SetClassLong'						SetClassLongW						user32		3
imp	'SetCursor'						SetCursor						user32		1
imp	'SetParent'						SetParent						user32		2
imp	'SetTimer'						SetTimer						user32		4
imp	'SetWindowLong'						SetWindowLongW						user32		3
imp	'SetWindowLongPtr'					SetWindowLongPtrW					user32		3
imp	'SetWindowPlacement'					SetWindowPlacement					user32		2
imp	'SetWindowPos'						SetWindowPos						user32		7
imp	'SetWindowText'						SetWindowTextW						user32		2
imp	'SetWindowsHook'					SetWindowsHookW						user32		2
imp	'SetWindowsHookEx'					SetWindowsHookExW					user32		4
imp	'ShowCaret'						ShowCaret						user32		1
imp	'ShowCursor'						ShowCursor						user32		1
imp	'ShowWindow'						ShowWindow						user32		2
imp	'TrackMouseEvent'					TrackMouseEvent						user32		1
imp	'TrackPopupMenu'					TrackPopupMenu						user32		7
imp	'TranslateMessage'					TranslateMessage					user32		1
imp	'UnhookWindowsHook'					UnhookWindowsHook					user32		2
imp	'UnhookWindowsHookEx'					UnhookWindowsHookEx					user32		1
imp	'UnregisterClass'					UnregisterClassW					user32		2
imp	'UpdateWindow'						UpdateWindow						user32		1
imp	'WaitForInputIdle'					WaitForInputIdle					user32		2
imp	'WindowFromPoint'					WindowFromPoint						user32		1

# SHELL32.DLL
#
#	Name							Actual							DLL		Arity
imp	'CommandLineToArgv'					CommandLineToArgvW					shell32		2
imp	'DragAcceptFiles'					DragAcceptFiles						shell32		2
imp	'DragFinish'						DragFinish						shell32		1
imp	'DragQueryFile'						DragQueryFileW						shell32		4

# GDI32.DLL
#
#	Name							Actual							DLL		Arity
imp	'BitBlt'						BitBlt							gdi32		9
imp	'ChoosePixelFormat'					ChoosePixelFormat					gdi32		2
imp	'CreateBitmap'						CreateBitmap						gdi32		5
imp	'CreateCompatibleBitmap'				CreateCompatibleBitmap					gdi32		3
imp	'CreateCompatibleDC'					CreateCompatibleDC					gdi32		1
imp	'CreateDIBSection'					CreateDIBSection					gdi32		6
imp	'CreateRectRgn'						CreateRectRgn						gdi32		4
imp	'DeleteDC'						DeleteDC						gdi32		1
imp	'DeleteObject'						DeleteObject						gdi32		1
imp	'DescribePixelFormat'					DescribePixelFormat					gdi32		4
imp	'GetPixel'						GetPixel						gdi32		3
imp	'RestoreDC'						RestoreDC						gdi32		2
imp	'SaveDC'						SaveDC							gdi32		1
imp	'SelectObject'						SelectObject						gdi32		2
imp	'SetBkMode'						SetBkMode						gdi32		2
imp	'SetPixel'						SetPixel						gdi32		4
imp	'SetPixelFormat'					SetPixelFormat						gdi32		3
imp	'SetTextAlign'						SetTextAlign						gdi32		2
imp	'SetTextColor'						SetTextColor						gdi32		2
imp	'SetTextJustification'					SetTextJustification					gdi32		3
imp	'SwapBuffers'						SwapBuffers						gdi32		1

# COMDLG32.DLL
#
#	Name							Actual							DLL		Arity
imp	'ChooseColor'						ChooseColorW						comdlg32	1
imp	'ChooseFont'						ChooseFontW						comdlg32	1
imp	'GetFileTitle'						GetFileTitleW						comdlg32	3
imp	'GetOpenFileName'					GetOpenFileNameW					comdlg32	1
imp	'GetSaveFileName'					GetSaveFileNameW					comdlg32	1
imp	'PrintDlg'						PrintDlgW						comdlg32	1
imp	'ReplaceText'						ReplaceTextW						comdlg32	1

# WS2_32.DLL
#
#	Name							Actual							DLL		Arity
imp	''							WSAGetOverlappedResult					ws2_32		5
imp	''							WSARecv							ws2_32		7
imp	''							WSARecvFrom						ws2_32		9
imp	''							WSAWaitForMultipleEvents				ws2_32		5
imp	''							accept							ws2_32		3	# we're using WSAAccept()
imp	''							bind							ws2_32		3
imp	''							closesocket						ws2_32		1
imp	''							getpeername						ws2_32		3
imp	''							getsockname						ws2_32		3
imp	''							getsockopt						ws2_32		5
imp	''							ioctlsocket						ws2_32		3
imp	''							listen							ws2_32		2
imp	''							recv							ws2_32		4	# we're using WSARecvFrom()
imp	''							recvfrom						ws2_32		6	# we're using WSARecvFrom()
imp	''							select							ws2_32		5
imp	''							send							ws2_32		4	# we're using WSASendTo()
imp	''							sendto							ws2_32		6	# we're using WSASendTo()
imp	''							setsockopt						ws2_32		5
imp	''							shutdown						ws2_32		2
imp	''							socket							ws2_32		3
imp	''							socket							ws2_32		3
imp	''							socket							ws2_32		3
imp	'FreeAddrInfo'						FreeAddrInfoW						ws2_32		1
imp	'FreeAddrInfoEx'					FreeAddrInfoExW						ws2_32		1
imp	'GetAddrInfo'						GetAddrInfoW						ws2_32		4
imp	'GetAddrInfoEx'						GetAddrInfoExW						ws2_32		10
imp	'GetAddrInfoExCancel'					GetAddrInfoExCancel					ws2_32		1
imp	'GetAddrInfoExOverlappedResult'				GetAddrInfoExOverlappedResult				ws2_32		1
imp	'GetHostName'						GetHostNameW						ws2_32		2
imp	'GetNameInfo'						GetNameInfoW						ws2_32		7
imp	'SetAddrInfoEx'						SetAddrInfoExW						ws2_32		12
imp	'WSAAccept'						WSAAccept						ws2_32		5
imp	'WSAAddressToString'					WSAAddressToStringW					ws2_32		5
imp	'WSAAsyncGetHostByAddr'					WSAAsyncGetHostByAddr					ws2_32		7
imp	'WSAAsyncGetHostByName'					WSAAsyncGetHostByName					ws2_32		5
imp	'WSAAsyncGetProtoByName'				WSAAsyncGetProtoByName					ws2_32		5
imp	'WSAAsyncGetProtoByNumber'				WSAAsyncGetProtoByNumber				ws2_32		5
imp	'WSACleanup'						WSACleanup						ws2_32		0
imp	'WSACloseEvent'						WSACloseEvent						ws2_32		1
imp	'WSAConnect'						WSAConnect						ws2_32		7
imp	'WSAConnectByList'					WSAConnectByList					ws2_32		8
imp	'WSAConnectByName'					WSAConnectByNameW					ws2_32		9
imp	'WSACreateEvent'					WSACreateEvent						ws2_32		0
imp	'WSADuplicateSocket'					WSADuplicateSocketW					ws2_32		3
imp	'WSAEnumNameSpaceProviders'				WSAEnumNameSpaceProvidersW				ws2_32		2
imp	'WSAEnumNameSpaceProvidersEx'				WSAEnumNameSpaceProvidersExW				ws2_32		2
imp	'WSAEnumNetworkEvents'					WSAEnumNetworkEvents					ws2_32		3
imp	'WSAEnumProtocols'					WSAEnumProtocolsW					ws2_32		3
imp	'WSAEventSelect'					WSAEventSelect						ws2_32		3
imp	'WSAGetLastError'					WSAGetLastError						ws2_32		0
imp	'WSAGetQOSByName'					WSAGetQOSByName						ws2_32		3
imp	'WSAGetServiceClassInfo'				WSAGetServiceClassInfoW					ws2_32		4
imp	'WSAGetServiceClassNameByClassId'			WSAGetServiceClassNameByClassIdW			ws2_32		3
imp	'WSAInstallServiceClass'				WSAInstallServiceClassW					ws2_32		1
imp	'WSAIoctl'						WSAIoctl						ws2_32		9
imp	'WSAJoinLeaf'						WSAJoinLeaf						ws2_32		8
imp	'WSALookupServiceBegin'					WSALookupServiceBeginW					ws2_32		3
imp	'WSALookupServiceEnd'					WSALookupServiceEnd					ws2_32		1
imp	'WSALookupServiceNext'					WSALookupServiceNextW					ws2_32		4
imp	'WSANSPIoctl'						WSANSPIoctl						ws2_32		8
imp	'WSAPoll'						WSAPoll							ws2_32		3
imp	'WSAProviderConfigChange'				WSAProviderConfigChange					ws2_32		3
imp	'WSARecvDisconnect'					WSARecvDisconnect					ws2_32		2
imp	'WSARemoveServiceClass'					WSARemoveServiceClass					ws2_32		1
imp	'WSAResetEvent'						WSAResetEvent						ws2_32		1
imp	'WSASend'						WSASend							ws2_32		7
imp	'WSASendDisconnect'					WSASendDisconnect					ws2_32		2
imp	'WSASendMsg'						WSASendMsg						ws2_32		6
imp	'WSASendTo'						WSASendTo						ws2_32		9
imp	'WSASetEvent'						WSASetEvent						ws2_32		1
imp	'WSASetLastError'					WSASetLastError						ws2_32		1
imp	'WSASetService'						WSASetServiceW						ws2_32		3
imp	'WSASocket'						WSASocketW						ws2_32		6
imp	'WSAStartup'						WSAStartup						ws2_32		2

# IPHLPAPI.DLL
#
#	Name							Actual							DLL		Arity
imp	'AddIPAddress'						AddIPAddress						iphlpapi	5
imp	'AllocateAndGetTcpExTableFromStack'			AllocateAndGetTcpExTableFromStack			iphlpapi	5
imp	'AllocateAndGetUdpExTableFromStack'			AllocateAndGetUdpExTableFromStack			iphlpapi	5
imp	'CancelIPChangeNotify'					CancelIPChangeNotify					iphlpapi	1
imp	'CaptureInterfaceHardwareCrossTimestamp'		CaptureInterfaceHardwareCrossTimestamp			iphlpapi	2
imp	'CreateIpForwardEntry'					CreateIpForwardEntry					iphlpapi	1
imp	'FlushIpNetTable'					FlushIpNetTable						iphlpapi	1
imp	'GetAdapterIndex'					GetAdapterIndex						iphlpapi	2
imp	'GetAdapterOrderMap'					GetAdapterOrderMap					iphlpapi	0
imp     'GetAdaptersAddresses'                                  GetAdaptersAddresses                                    iphlpapi	5
imp	'GetAdaptersInfo'					GetAdaptersInfo						iphlpapi	2
imp	'GetBestInterface'					GetBestInterface					iphlpapi	2
imp	'GetBestInterfaceEx'					GetBestInterfaceEx					iphlpapi	2
imp	'GetBestRoute'						GetBestRoute						iphlpapi	3
imp	'GetNumberOfInterfaces'					GetNumberOfInterfaces					iphlpapi	1
imp	'GetTcpTable'						GetTcpTable						iphlpapi	3
imp	'GetTcpTable2'						GetTcpTable2						iphlpapi	3

# POWRPROF.DLL
#
#	Name							Actual							DLL		Arity
imp	'SetSuspendState'					SetSuspendState						PowrProf	3

# PDH.DLL
#
#	Name							Actual							DLL		Arity
imp	'PdhAddEnglishCounter'					PdhAddEnglishCounterW					pdh		4	# Adds the specified language-neutral counter to the query.
imp	'PdhCollectQueryDataEx'					PdhCollectQueryDataEx					pdh		3	# Uses a separate thread to collect the current raw data value for all counters in the specified query. The function then signals the application-defined event and waits the specified time interval before returning.
imp	'PdhGetFormattedCounterValue'				PdhGetFormattedCounterValue				pdh		4	# Computes a displayable value for the specified counter.
imp	'PdhOpenQuery'						PdhOpenQueryW						pdh		3	# Creates a new query that is used to manage the collection of performance data. To use handles to data sources, use the PdhOpenQueryH function.

# PSAPI.DLL
#
#	Name							Actual							DLL		Arity
imp	'EnumProcessModules'					EnumProcessModules					psapi		4
imp	'EnumProcessModulesEx'					EnumProcessModulesEx					psapi		5
imp	'EnumProcesses'						EnumProcesses						psapi		3
imp	'GetModuleBaseName'					GetModuleBaseNameW					psapi		4
imp	'GetProcessImageFileName'				GetProcessImageFileNameW				psapi		3
imp	'GetProcessMemoryInfo'					GetProcessMemoryInfo					psapi		3

# BCryptPrimitives.dll
#
#	Name							Actual							DLL			Arity
imp	'ProcessPrng'						ProcessPrng						BCryptPrimitives	2

# API-MS-Win-Core-Synch-l1-2-0.dll (Windows 8+)
#
#	Name							Actual							DLL					Arity
imp	'WaitOnAddress'						WaitOnAddress						API-MS-Win-Core-Synch-l1-2-0		4
imp	'WakeByAddressAll'					WakeByAddressAll					API-MS-Win-Core-Synch-l1-2-0		1
imp	'WakeByAddressSingle'					WakeByAddressSingle					API-MS-Win-Core-Synch-l1-2-0		1

# API-MS-Win-Core-Memory-l1-1-6.dll (Windows 10+)
#
#	Name							Actual							DLL					Arity
imp	'MapViewOfFile3'					MapViewOfFile3						API-MS-Win-Core-Memory-l1-1-6		9
imp	'VirtualAlloc2'						VirtualAlloc2						API-MS-Win-Core-Memory-l1-1-6		7

# API-MS-Win-Core-Realtime-l1-1-1.dll (Windows 10+)
#
#	Name							Actual							DLL					Arity
imp	'QueryInterruptTime'					QueryInterruptTime					API-MS-Win-Core-Realtime-l1-1-1		1
imp	'QueryInterruptTimePrecise'				QueryInterruptTimePrecise				API-MS-Win-Core-Realtime-l1-1-1		1
imp	'QueryUnbiasedInterruptTimePrecise'			QueryUnbiasedInterruptTimePrecise			API-MS-Win-Core-Realtime-l1-1-1		1

# NTDLL.DLL
# BEYOND THE PALE
#
#  “The functions and structures in [for these APIs] are internal to
#   the operating system and subject to change from one release of
#   Windows to the next, and possibly even between service packs for
#   each release.” ──Quoth MSDN
#
#	Name							Actual							DLL		Arity
imp	'CsrClientCallServer'					CsrClientCallServer					ntdll		4
imp	'LdrGetDllHandle'					LdrGetDllHandle						ntdll		4
imp	'LdrGetProcedureAddress'				LdrGetProcedureAddress					ntdll		4
imp	'LdrLoadDll'						LdrLoadDll						ntdll		4
imp	'LdrUnloadDll'						LdrUnloadDll						ntdll		1
imp	'NtAllocateVirtualMemory'				NtAllocateVirtualMemory					ntdll		6
imp	'NtCallbackReturn'					NtCallbackReturn					ntdll		3
imp	'NtCancelIoFile'					NtCancelIoFile						ntdll		2
imp	'NtCancelIoFileEx'					NtCancelIoFileEx					ntdll		3
imp	'NtClearEvent'						NtClearEvent						ntdll		1
imp	'NtClose'						NtClose							ntdll		1
imp	'NtContinue'						NtContinue						ntdll		2
imp	'NtCreateDirectoryObject'				NtCreateDirectoryObject					ntdll		3
imp	'NtCreateEvent'						NtCreateEvent						ntdll		5
imp	'NtCreateFile'						NtCreateFile						ntdll		11
imp	'NtCreateIoCompletion'					NtCreateIoCompletion					ntdll		4
imp	'NtCreateKey'						NtCreateKey						ntdll		7
imp	'NtCreateKeyedEvent'					NtCreateKeyedEvent					ntdll		4
imp	'NtCreateNamedPipeFile'					NtCreateNamedPipeFile					ntdll		14
imp	'NtCreateProcess'					NtCreateProcess						ntdll		8
imp	'NtCreateProfile'					NtCreateProfile						ntdll		9
imp	'NtCreateSection'					NtCreateSection						ntdll		7
imp	'NtCreateThread'					NtCreateThread						ntdll		8
imp	'NtCreateTimer'						NtCreateTimer						ntdll		4
imp	'NtDelayExecution'					NtDelayExecution					ntdll		2
imp	'NtDeleteFile'						NtDeleteFile						ntdll		1
imp	'NtDeleteKey'						NtDeleteKey						ntdll		1
imp	'NtDeviceIoControlFile'					NtDeviceIoControlFile					ntdll		10
imp	'NtDuplicateObject'					NtDuplicateObject					ntdll		7
imp	'NtEnumerateKey'					NtEnumerateKey						ntdll		6
imp	'NtEnumerateValueKey'					NtEnumerateValueKey					ntdll		6
imp	'NtFlushBuffersFile'					NtFlushBuffersFile					ntdll		2
imp	'NtFlushInstructionCache'				NtFlushInstructionCache					ntdll		3
imp	'NtFlushKey'						NtFlushKey						ntdll		1
imp	'NtFlushVirtualMemory'					NtFlushVirtualMemory					ntdll		4
imp	'NtFreeVirtualMemory'					NtFreeVirtualMemory					ntdll		4
imp	'NtFsControlFile'					NtFsControlFile						ntdll		10
imp	'NtGetContextThread'					NtGetContextThread					ntdll		2
imp	'NtMapViewOfSection'					NtMapViewOfSection					ntdll		10
imp	'NtOpenDirectoryObject'					NtOpenDirectoryObject					ntdll		3
imp	'NtOpenFile'						NtOpenFile						ntdll		6
imp	'NtOpenKey'						NtOpenKey						ntdll		3
imp	'NtOpenProcess'						NtOpenProcess						ntdll		4
imp	'NtOpenProcessToken'					NtOpenProcessToken					ntdll		3
imp	'NtOpenSection'						NtOpenSection						ntdll		3
imp	'NtOpenSymbolicLinkObject'				NtOpenSymbolicLinkObject				ntdll		3
imp	'NtOpenThread'						NtOpenThread						ntdll		4
imp	'NtOpenThreadToken'					NtOpenThreadToken					ntdll		4
imp	'NtProtectVirtualMemory'				NtProtectVirtualMemory					ntdll		5
imp	'NtQueryAttributesFile'					NtQueryAttributesFile					ntdll		2
imp	'NtQueryDirectoryFile'					NtQueryDirectoryFile					ntdll		11
imp	'NtQueryFullAttributesFile'				NtQueryFullAttributesFile				ntdll		2
imp	'NtQueryInformationFile'				NtQueryInformationFile					ntdll		5
imp	'NtQueryInformationJobObject'				NtQueryInformationJobObject				ntdll		5
imp	'NtQueryInformationProcess'				NtQueryInformationProcess				ntdll		5
imp	'NtQueryInformationThread'				NtQueryInformationThread				ntdll		5
imp	'NtQueryInformationToken'				NtQueryInformationToken					ntdll		5
imp	'NtQueryIntervalProfile'				NtQueryIntervalProfile					ntdll		2
imp	'NtQueryObject'						NtQueryObject						ntdll		5
imp	'NtQueryPerformanceCounter'				NtQueryPerformanceCounter				ntdll		2
imp	'NtQuerySection'					NtQuerySection						ntdll		5
imp	'NtQuerySecurityObject'					NtQuerySecurityObject					ntdll		5
imp	'NtQuerySymbolicLinkObject'				NtQuerySymbolicLinkObject				ntdll		3
imp	'NtQuerySystemInformation'				NtQuerySystemInformation				ntdll		4
imp	'NtQuerySystemTime'					NtQuerySystemTime					ntdll		1
imp	'NtQueryTimerResolution'				NtQueryTimerResolution					ntdll		3
imp	'NtQueryValueKey'					NtQueryValueKey						ntdll		6
imp	'NtQueryVirtualMemory'					NtQueryVirtualMemory					ntdll		6
imp	'NtQueryVolumeInformationFile'				NtQueryVolumeInformationFile				ntdll		5
imp	'NtQueueApcThread'					NtQueueApcThread					ntdll		5
imp	'NtRaiseException'					NtRaiseException					ntdll		3
imp	'NtRaiseHardError'					NtRaiseHardError					ntdll		6
imp	'NtReadFile'						NtReadFile						ntdll		9
imp	'NtReadVirtualMemory'					NtReadVirtualMemory					ntdll		5
imp	'NtReleaseKeyedEvent'					NtReleaseKeyedEvent					ntdll		4
imp	'NtResumeThread'					NtResumeThread						ntdll		2
imp	'NtSetContextThread'					NtSetContextThread					ntdll		2
imp	'NtSetEvent'						NtSetEvent						ntdll		2
imp	'NtSetInformationFile'					NtSetInformationFile					ntdll		5
imp	'NtSetInformationThread'				NtSetInformationThread					ntdll		4
imp	'NtSetIntervalProfile'					NtSetIntervalProfile					ntdll		2
imp	'NtSetTimer'						NtSetTimer						ntdll		7
imp	'NtSetTimerResolution'					NtSetTimerResolution					ntdll		3
imp	'NtSetValueKey'						NtSetValueKey						ntdll		6
imp	'NtSignalAndWaitForSingleObject'			NtSignalAndWaitForSingleObject				ntdll		4
imp	'NtStartProfile'					NtStartProfile						ntdll		1
imp	'NtStopProfile'						NtStopProfile						ntdll		1
imp	'NtSuspendThread'					NtSuspendThread						ntdll		2
imp	'NtTerminateProcess'					NtTerminateProcess					ntdll		2
imp	'NtTerminateThread'					NtTerminateThread					ntdll		2
imp	'NtTestAlert'						NtTestAlert						ntdll		0
imp	'NtUnmapViewOfSection'					NtUnmapViewOfSection					ntdll		2
imp	'NtWaitForKeyedEvent'					NtWaitForKeyedEvent					ntdll		4
imp	'NtWaitForSingleObject'					NtWaitForSingleObject					ntdll		3
imp	'NtWriteFile'						NtWriteFile						ntdll		9
imp	'NtWriteVirtualMemory'					NtWriteVirtualMemory					ntdll		5
imp	'NtYieldExecution'					NtYieldExecution					ntdll		0
imp	'RtlAllocateHeap'					RtlAllocateHeap						ntdll		3
imp	'RtlCloneUserProcess'					RtlCloneUserProcess					ntdll		5
imp	'RtlConvertSidToUnicodeString'				RtlConvertSidToUnicodeString				ntdll		3
imp	'RtlCreateHeap'						RtlCreateHeap						ntdll		6
imp	'RtlCreateProcessParameters'				RtlCreateProcessParameters				ntdll		10
imp	'RtlDeleteCriticalSection'				RtlDeleteCriticalSection				ntdll		1
imp	'RtlDestroyHeap'					RtlDestroyHeap						ntdll		1
imp	'RtlDestroyProcessParameters'				RtlDestroyProcessParameters				ntdll		1
imp	'RtlEnterCriticalSection'				RtlEnterCriticalSection					ntdll		1
imp	'RtlFreeHeap'						RtlFreeHeap						ntdll		3
imp	'RtlFreeUnicodeString'					RtlFreeUnicodeString					ntdll		1
imp	'RtlGetProcessHeaps'					RtlGetProcessHeaps					ntdll		2
imp	'RtlInitUnicodeString'					RtlInitUnicodeString					ntdll		2
imp	'RtlInitializeCriticalSection'				RtlInitializeCriticalSection				ntdll		1
imp	'RtlLeaveCriticalSection'				RtlLeaveCriticalSection					ntdll		1
imp	'RtlLockHeap'						RtlLockHeap						ntdll		1
imp	'RtlNtStatusToDosError'					RtlNtStatusToDosError					ntdll		1
imp	'RtlQueryEnvironmentVariable'				RtlQueryEnvironmentVariable				ntdll		3
imp	'RtlReAllocateHeap'					RtlReAllocateHeap					ntdll		4
imp	'RtlSizeHeap'						RtlSizeHeap						ntdll		3
imp	'RtlTryEnterCriticalSection'				RtlTryEnterCriticalSection				ntdll		1
imp	'RtlUnlockHeap'						RtlUnlockHeap						ntdll		1
imp	'RtlValidateHeap'					RtlValidateHeap						ntdll		3
imp	'RtlWalkHeap'						RtlWalkHeap						ntdll		2
imp	'ZwAreMappedFilesTheSame'				ZwAreMappedFilesTheSame					ntdll		2
