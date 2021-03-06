/ $Header: udeus.msg 14-Jan-2002.11:06:19 rapayne ude
/ Copyright (c)  2002,2008 by the Oracle Corporation.  All rights reserved.
/
/ Created: 01/01/02
/
/ OWNER
/    Rod Payne - 2002
/ MODIFIED:
/   jkaloger    11/26/09 - BUG:4204992 - reorganize help messages to 
/                          simplify language translation.
/   dgagne      11/13/08 - Change edition to source_edition
/   bmccarth    11/12/08 - More descriptive legacy mode deprecated action
/   jkaloger    02/13/08 - BUG:6817873 - current_edition is now just edition
/   bmccarth    11/07/07 - Legacy mode messages
/   wfisher     09/27/06 - Finalize help text for 11gR1
/   rapayne     10/25/05 - Modify version incompatibility message.
/   jkaloger    07/19/05 - Add help for REUSE_DUMPFILES parameter.
/   rapayne     03/28/05 - Remove copyright date from message file.
/   rapayne     02/18/05 - Add  message for parameter list length failures.
/   rapayne     06/08/04 - Add  COMPRESSION, ENCRYPTION_PASSWORD and
/                          SAMPLE parameter descriptions to help text.
/                        - Add description for FILESIZE interactive cmd.
/   rapayne     03/01/04 - Add version incompatibility message.
/                          Add worker parallelism message.
/   rapayne     10/01/03 - Modify messages with integer parameters, which 
/                          can potentially be over 32bit quanitites, to 
/                          string parameters.
/   rapayne     08/29/03 - Correct help text for TRANSPORT_TABLESPACE parm
/   rapayne     07/02/03 - Update help text messages.
/                        - Add 'user requested cancel' message.
/   rapayne     06/18/03 - Drop 'corporation' text from copyright banner.
/   rapayne     05/25/03 - Make 'dispatching' errors 'NO DOCUMENT'
/   rapayne     05/05/03 - Update help text.
/   rapayne     03/07/03 - Update copyright message.
/   rapayne     02/27/03 - remove NONE from keyword list for ESTIMATE 
/                          parameter.
/                        - minor grammatical corrections.
/   rapayne     01/07/03 - correct message(14) for invalid parameter value
/   rapayne     01/07/03 - minor typo fixes
/   rapayne     12/23/02 - post review minor cleanup 
/                        - remove ACCESS_METHOD parameter from help
/                          text (i.e. undocumented).
/   rapayne     11/21/02 - add invalid job context/state error msg
/                        - minor consistency cleanup
/   rapayne     10/14/02 - add parameter parsing error msg
/   rapayne     09/18/02 - cleanup - subdivide the classes of messages into
/                          common (i.e. consistent across impdp and expdp)
/                          and client specific messages.
/   rapayne     09/06/02 - Add msg indicating ATTACH is not allow in single
/                          process mode.
/                          help messages
/   rapayne     08/15/02 - minor clean up and reformat the command
/                          help messages
/   rapayne     08/05/02 - add error msgs for 'multiple schema' errors
/                        - and 'invalid operation'
/   rapayne     06/28/02 - add imcompatible client msg
/                        - add invalid parallelism msg
/
/ This file is converted to header/message files using lmsgen.c
/
/ The first column is the Export error number.
/ The second column is reserved and must be (for now) 00000
/ The remainder of the line is the error text
/
/ Adding an error for Export:
/    Check out this file, add the error, and check it back in. Error numbers
/    should always be ordered.  The second column should always be 00000.
/
/    NOTE:
/    There are 4 'classes' of messages defined for the Data Pump clients:
/    (Errors, Informational, Prompt, and Help messages). Save for the
/    help messages, which are all client specific, each class of messages
/    has been divided into 2 sub-classes, common and client specific. The
/    lower half of the range is reserved for messages common to both
/    clients and MUST be consistent with the messages defined in udius.msg.
/    Contextually these messages might vary slightly but conceptual
/    these messages are consistent. The indices for these common messages are
/    defined in udcdef.h. The upper half of each range is reserved for client
/    specific messages and may vary with messages defined in this range in
/    udius.msg. The indices for client specific messages are defined in the
/    client specific header files, udedef.h and udidef.h.
/
/ Range 000-099:  Errors messages
/   Range 000 - 049: Common Data Pump client errors
/   Range 050 - 099: Export specific errors
/ Range 100 - 199: Informational messages
/   Range 100 - 149: Common Data Pump client info messages
/   Range 150 - 199: Export specific errors
/ Range 200 - 299: Prompt messages
/   Range 200 - 249: Common Data Pump client prompt messages
/   Range 250 - 299: Export specific errors
/ Range 300 - 799: help messages
/   Range 300 - 599: Command line help
/   Range 600 - 799: Interactive mode help
/
/ Common Error Messages [0-49] - (ordering is the same as udius.msg)
/
// NLS_DO_NOT_TRANSLATE [0,0]
00000, 00000, "UNUSED\n"
// *Document: NO
00001, 00000, "user requested cancel of current operation\n"
// *Cause:  User has requested a cancellation of current job.
// *Action: No action is needed.
00002, 00000, "invalid username or password"
// *Cause:  An invalid username or password was specified.
// *Action: Retry with a valid username and password.
00003, 00000, "all allowable logon attempts failed"
// *Cause:  Attempts were repeatedly made to log on with an invalid username
//          or password.
// *Action: Shut down the utility, then restart and retry with a valid
//          username and password.
00004, 00000, "operation generated ORACLE error %lu"
// *Cause:  The operation unexpectedly produced the specified error. Refer to
//          the description of that error for more information.
// *Action: Refer to the description of the reported error for possible
//          actions.
00005, 00000, "unexpected End-Of-File encountered while reading input\n"
// *Cause:  Encountered an End-Of-File while reading the user input.
// *Action: If input to export is being redirected, check the file for errors.
00006, 00000, "failed to allocate memory of size %lu"
// *Cause:  Unable to allocate the necessary memory.
// *Action: Record the messages that follow and report this to Oracle Customer
//          Support as an Export internal bug.
00007, 00000, "attempt to free unallocated memory"
// *Cause:  An attempt was made to free memory that was not allocated.
// *Action: Contact Oracle Worldwide Support
// NLS_DO_NOT_TRANSLATE [8,9]
00008, 00000, "placeholder for OCI error dispatching"
// *Document: NO
// *Cause:  filler
// *Action: filler
00009, 00000, "placeholder for Data Pump job error dispatching"
// *Document: NO
// *Cause:  filler
// *Action: filler
00010, 00000, "multiple job modes requested, %s and %s."
// *Cause:  Multiple job modes were specified.
// *Action: Specify only one valid mode, then retry.
00011, 00000, "parameter %s is incompatible with parameter %s"
// *Cause:  An invalid combination of parameters was specified.
// *Action: Refer to documentation for the set of valid modes, then retry.
00012, 00000, "table mode exports only allow objects from one schema"
// *Cause:  Multiple schemas were selected for export.
// *Action: Retry export specifying only one schema.
00013, 00000, "internal expdp error."
// *Cause:  Fatal internal Data Pump client error.
// *Action: Contact Oracle Customer Support
00014, 00000, "invalid value for parameter, '%s'."
// *Cause:  Could not parse the specified parameter or parameter value.
// *Action: Refer to documentation for valid parameter values.
00015, 00000, "invalid context or job state for parameter, '%s'."
// *Cause:  Invalid job state or context for specified parameter.
// *Action: Refer to documentation for correct parameter usage.
00016, 00000, "'%s' parameter requires a value."
// *Cause:  Parameter was specified without a value.
// *Action: Refer to documentation for correct parameter usage.
00017, 00000, "Data Pump job is already executing."
// *Cause:  Incorrect Data Pump job state for requested operation.
// *Action: Refer to documentation for correct usage.
00018, 00000, "Data Pump client is incompatible with database version %s"
// *Cause:  The Export utility is at a higher version than the database 
//          version and is thereby incompatible.
// *Action: Use the same version of Export utility as the database.
00019, 00000, "'%s' parameter list is too long."
// *Cause:  Requested parameter list exceeds 4000 character maximum.
// *Action: Reduce the specified number of parameter values and rerun.
00020, 00000, "Data Pump client is incompatible with Data Pump API."
// *Cause:  The Export utility is at a higher version than the Data Pump 
//          server and is thereby incompatible.
// *Action: Use the same version of Export utility as the server.
/
/ Client specific Error messages [50-99]
/
00050, 00000, "Unable to setup parameter processing."
// *Cause:  An unexpected error occurred during parameter manager initialization.
// *Action: Record the messages that follow and report this to Oracle Customer
//          Support as an Export internal bug.
00051, 00000, "unable to set NLS_NUMERIC_CHARACTERS to required defaults."
// *Cause:  Export was unable to set NLS_NUMERIC_CHARACTERS to '.,'
// *Action: Record the accompanying messages and report this as an Export
//          internal error to Oracle customer support.
00052, 00000, "incorrect Data Pump client for operation: %s"
// *Cause:  Export client attempted to attach to import job.
// *Action: Use appropriate client when attaching to an existing job
00053, 00000, "unrecognized client command '%s'"
// *Cause:  Invalid interactive client command.
// *Action: Refer to documentation for valid client commands.
00054, 00000, "Deprecated Legacy Mode parameter '%s' specified at or on: %s"
// *Cause:  The Legacy Mode parameter specified has no corresponding 
//          Data Pump mapping.
// *Action: Review the location referred to in the error message (
//          (either 'Command Line', 'Parameter File', or 'Environment Variable')
//          and remove the parameter.
/
/ Common Informational msgs [100-149] - (ordering is the same as udius.msg)
/
// UI[100,136]
// NLS_DO_NOT_TRANSLATE[100,100]
00100, 00000, "UNUSED"
00101, 00000, "\nJob: %s\n"
00102, 00000, "  Owner: %-31s\n"
00103, 00000, "  Operation: %-31s\n"
00104, 00000, "  Creator Privs: %-31s\n"
00105, 00000, "  GUID: "
00106, 00000, "  Start Time: %s\n"
00107, 00000, "  Mode: %-31s\n"
00108, 00000, "  State: %-31s\n"
00109, 00000, "  Instance: %s\n"
00110, 00000, "  Bytes Processed: %s\n"
00111, 00000, "  Percent Done: %d\n"
00112, 00000, "  Max Parallelism: %d\n"
00113, 00000, "  Current Parallelism: %d\n"
00114, 00000, "  Job Error Count: %d\n"
00115, 00000, "  Phase: %d\n"
00116, 00000, "  Dump File: %s\n"
00117, 00000, "    size: %s\n"
00118, 00000, "  %s Job Parameters:\n"
00119, 00000, "  Parameter Name      Parameter Value:\n"
00120, 00000, "  \nWorker %d Status:\n"
00121, 00000, "  Process Name: %s\n"
00122, 00000, "  Object Schema: %s\n"
00123, 00000, "  Object Name: %s\n"
00124, 00000, "  Object Type: %s\n"
00125, 00000, "  Completed Objects: %s\n"
00126, 00000, "  Total Objects: %s\n"
00127, 00000, "  Completed Rows: %s\n"
00128, 00000, "  Completed Bytes: %s\n"
00129, 00000, "    bytes written: %s\n"
00130, 00000, "  Worker Parallelism: %d\n"
00131, 00000, "Legacy Mode Active due to the following parameters:\n"
00132, 00000, "Legacy Mode Parameter: \"%s\" Location: %s, Replaced with: \"%s\"\n"
00133, 00000, "Legacy Mode Parameter: \"%s\" Location: %s, ignored.\n"
00134, 00000, "Legacy Mode has set %s=%s parameter.\n"
00135, 00000, "Database Directory Object \"%s\" has been added to file specification: \"%s\".\n"
00136, 00000, "Database Directory Object has defaulted to: \"%s\".\n"
/
/ Client Specific Informational Messages
/
// UI[150,152]
// NLS_DO_NOT_TRANSLATE [150,150]
00150, 00000, "Export"
00151, 00000, "\nConnected to: %s"
// NLS_DO_NOT_TRANSLATE [152,152]
00152, 00000, "\nExport: Release %s %s on %s\n\nCopyright (c) %s, Oracle.  All rights reserved.\n"
/
/ Prompt messages - (ordering is the same as udius.msg)
/
// UI[200,203]
// NLS_DO_NOT_TRANSLATE [200,200]
00200, 00000, "\nExport> "
00201, 00000, "\nUsername: "
00202, 00000, "Password: "
00203, 00000, "Are you sure you wish to stop this job ([yes]/no): "
/
/ HELP messages, range defined as UDESHLP and UDEEHLP in udedef.h
/
// UI[300,408]
00300, 00000, "\n\nThe Data Pump export utility provides a mechanism for transferring data objects\n"
00301, 00000, "between Oracle databases. The utility is invoked with the following command:\n"
00302, 00000, "\n"
00303, 00000, "   Example: expdp scott/tiger DIRECTORY=dmpdir DUMPFILE=scott.dmp\n"
00304, 00000, "\n"
00305, 00000, "You can control how Export runs by entering the 'expdp' command followed\n"
00306, 00000, "by various parameters. To specify parameters, you use keywords:\n"
00307, 00000, "\n"
00308, 00000, "   Format:  expdp KEYWORD=value or KEYWORD=(value1,value2,...,valueN)\n"
00309, 00000, "   Example: expdp scott/tiger DUMPFILE=scott.dmp DIRECTORY=dmpdir SCHEMAS=scott\n"
00310, 00000, "               or TABLES=(T1:P1,T1:P2), if T1 is partitioned table\n"
00311, 00000, "\n"
00312, 00000, "USERID must be the first parameter on the command line.\n\n"
00313, 00000, "------------------------------------------------------------------------------\n"
00314, 00000, "\n"
00315, 00000, "The available keywords and their descriptions follow. Default values are listed within square brackets.\n\n"
00316, 00000, "ATTACH\n"
00317, 00000, "Attach to an existing job.\n" 
00318, 00000, "For example, ATTACH=job_name.\n\n"
00319, 00000, "COMPRESSION\n"           
00320, 00000, "Reduce the size of a dump file.\n"
00321, 00000, "Valid keyword values are: ALL, DATA_ONLY, [METADATA_ONLY] and NONE.\n\n"
00322, 00000, "CONTENT\n"
00323, 00000, "Specifies data to unload.\n"
00324, 00000, "Valid keyword values are: [ALL], DATA_ONLY and METADATA_ONLY.\n\n"
00325, 00000, "DATA_OPTIONS\n"
00326, 00000, "Data layer option flags.\n"
00327, 00000, "Valid keyword values are: XML_CLOBS.\n\n"
00328, 00000, "DIRECTORY\n"
00329, 00000, "Directory object to be used for dump and log files.\n\n"
00330, 00000, "DUMPFILE\n"
00331, 00000, "Specify list of destination dump file names [expdat.dmp].\n"
00332, 00000, "For example, DUMPFILE=scott1.dmp, scott2.dmp, dmpdir:scott3.dmp.\n\n"
00333, 00000, "ENCRYPTION\n"
00334, 00000, "Encrypt part or all of a dump file.\n"
00335, 00000, "Valid keyword values are: ALL, DATA_ONLY, ENCRYPTED_COLUMNS_ONLY, METADATA_ONLY and NONE.\n\n"
00336, 00000, "ENCRYPTION_ALGORITHM\n"
00337, 00000, "Specify how encryption should be done.\n"
00338, 00000, "Valid keyword values are: [AES128], AES192 and AES256.\n\n"
00339, 00000, "ENCRYPTION_MODE\n"
00340, 00000, "Method of generating encryption key.\n"
00341, 00000, "Valid keyword values are: DUAL, PASSWORD and [TRANSPARENT].\n\n"
00342, 00000, "ENCRYPTION_PASSWORD\n"
00343, 00000, "Password key for creating encrypted data within a dump file.\n\n"
00344, 00000, "ESTIMATE\n"
00345, 00000, "Calculate job estimates.\n"
00346, 00000, "Valid keyword values are: [BLOCKS] and STATISTICS.\n\n"
00347, 00000, "ESTIMATE_ONLY\n"
00348, 00000, "Calculate job estimates without performing the export.\n\n"
00349, 00000, "EXCLUDE\n"
00350, 00000, "Exclude specific object types.\n"
00351, 00000, "For example, EXCLUDE=SCHEMA:\"='HR'\".\n\n"
00352, 00000, "FILESIZE\n"
00353, 00000, "Specify the size of each dump file in units of bytes.\n\n"
00354, 00000, "FLASHBACK_SCN\n"
00355, 00000, "SCN used to reset session snapshot.\n\n"
00356, 00000, "FLASHBACK_TIME\n"
00357, 00000, "Time used to find the closest corresponding SCN value.\n\n"
00358, 00000, "FULL\n"
00359, 00000, "Export entire database [N].\n\n"
00360, 00000, "HELP\n"
00361, 00000, "Display Help messages [N].\n\n"
00362, 00000, "INCLUDE\n"
00363, 00000, "Include specific object types.\n"
00364, 00000, "For example, INCLUDE=TABLE_DATA.\n\n"
00365, 00000, "JOB_NAME\n"
00366, 00000, "Name of export job to create.\n\n"
00367, 00000, "LOGFILE\n"
00368, 00000, "Specify log file name [export.log].\n\n"
00369, 00000, "NETWORK_LINK\n"
00370, 00000, "Name of remote database link to the source system.\n\n"
00371, 00000, "NOLOGFILE\n"
00372, 00000, "Do not write log file [N].\n\n"
00373, 00000, "PARALLEL\n"
00374, 00000, "Change the number of active workers for current job.\n\n"
00375, 00000, "PARFILE\n"
00376, 00000, "Specify parameter file name.\n\n"
00377, 00000, "QUERY\n"
00378, 00000, "Predicate clause used to export a subset of a table.\n"
00379, 00000, "For example, QUERY=employees:\"WHERE department_id > 10\".\n\n"
00380, 00000, "REMAP_DATA\n"
00381, 00000, "Specify a data conversion function.\n"
00382, 00000, "For example, REMAP_DATA=EMP.EMPNO:REMAPPKG.EMPNO.\n\n"
00383, 00000, "REUSE_DUMPFILES\n"
00384, 00000, "Overwrite destination dump file if it exists [N].\n\n"
00385, 00000, "SAMPLE\n"
00386, 00000, "Percentage of data to be exported. \n\n"
00387, 00000, "SCHEMAS\n"
00388, 00000, "List of schemas to export [login schema].\n\n"
00389, 00000, "SOURCE_EDITION\n"
00390, 00000, "Edition to be used for extracting metadata.\n\n"
00391, 00000, "STATUS\n"
00392, 00000, "Frequency (secs) job status is to be monitored where\n"
00393, 00000, "the default [0] will show new status when available.\n\n"
00394, 00000, "TABLES\n"
00395, 00000, "Identifies a list of tables to export.\n"
00396, 00000, "For example, TABLES=HR.EMPLOYEES,SH.SALES:SALES_1995.\n\n"
00397, 00000, "TABLESPACES\n"
00398, 00000, "Identifies a list of tablespaces to export.\n\n"
00399, 00000, "TRANSPORTABLE\n"
00400, 00000, "Specify whether transportable method can be used.\n" 
00401, 00000, "Valid keyword values are: ALWAYS and [NEVER].\n\n"
00402, 00000, "TRANSPORT_FULL_CHECK\n"
00403, 00000, "Verify storage segments of all tables [N].\n\n"
00404, 00000, "TRANSPORT_TABLESPACES\n"
00405, 00000, "List of tablespaces from which metadata will be unloaded.\n\n"
00406, 00000, "VERSION\n"
00407, 00000, "Version of objects to export.\n"
00408, 00000, "Valid keyword values are: [COMPATIBLE], LATEST or any valid database version.\n\n"
/
/
/ HELP messages for client commands, range defined as UDESHLP and
/ UDEEHLP in udedef.h
/
// UI[600,627]
00600, 00000, "------------------------------------------------------------------------------\n\n"
00601, 00000, "The following commands are valid while in interactive mode.\n"
00602, 00000, "Note: abbreviations are allowed.\n\n"
00603, 00000, "ADD_FILE\n"
00604, 00000, "Add dumpfile to dumpfile set.\n\n"
00605, 00000, "CONTINUE_CLIENT\n"
00606, 00000, "Return to logging mode. Job will be restarted if idle.\n\n"
00607, 00000, "EXIT_CLIENT\n"
00608, 00000, "Quit client session and leave job running.\n\n"
00609, 00000, "FILESIZE\n"
00610, 00000, "Default filesize (bytes) for subsequent ADD_FILE commands.\n\n"
00611, 00000, "HELP\n"
00612, 00000, "Summarize interactive commands.\n\n"
00613, 00000, "KILL_JOB\n"
00614, 00000, "Detach and delete job.\n\n"
00615, 00000, "PARALLEL\n"
00616, 00000, "Change the number of active workers for current job.\n\n"
00617, 00000, "REUSE_DUMPFILES\n"
00618, 00000, "Overwrite destination dump file if it exists [N]. \n\n"
00619, 00000, "START_JOB\n"
00620, 00000, "Start or resume current job.\n"
00621, 00000, "Valid keyword values are: SKIP_CURRENT.\n\n"
00622, 00000, "STATUS\n"
00623, 00000, "Frequency (secs) job status is to be monitored where\n"
00624, 00000, "the default [0] will show new status when available.\n\n"
00625, 00000, "STOP_JOB\n"
00626, 00000, "Orderly shutdown of job execution and exits the client.\n"
00627, 00000, "Valid keyword values are: IMMEDIATE.\n\n"

