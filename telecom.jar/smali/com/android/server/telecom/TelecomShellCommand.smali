.class public Lcom/android/server/telecom/TelecomShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "TelecomShellCommand.java"


# static fields
.field private static final CALLING_PACKAGE:Ljava/lang/String;

.field private static final COMMAND_ADD_OR_REMOVE_CALL_COMPANION_APP:Ljava/lang/String; = "add-or-remove-call-companion-app"

.field private static final COMMAND_CLEANUP_ORPHAN_PHONE_ACCOUNTS:Ljava/lang/String; = "cleanup-orphan-phone-accounts"

.field private static final COMMAND_CLEANUP_STUCK_CALLS:Ljava/lang/String; = "cleanup-stuck-calls"

.field private static final COMMAND_GET_DEFAULT_DIALER:Ljava/lang/String; = "get-default-dialer"

.field private static final COMMAND_GET_MAX_PHONES:Ljava/lang/String; = "get-max-phones"

.field private static final COMMAND_GET_SIM_CONFIG:Ljava/lang/String; = "get-sim-config"

.field private static final COMMAND_GET_SYSTEM_DIALER:Ljava/lang/String; = "get-system-dialer"

.field private static final COMMAND_IS_NON_IN_CALL_SERVICE_BOUND:Ljava/lang/String; = "is-non-ui-in-call-service-bound"

.field private static final COMMAND_LOG_MARK:Ljava/lang/String; = "log-mark"

.field private static final COMMAND_REGISTER_PHONE_ACCOUNT:Ljava/lang/String; = "register-phone-account"

.field private static final COMMAND_REGISTER_SIM_PHONE_ACCOUNT:Ljava/lang/String; = "register-sim-phone-account"

.field private static final COMMAND_RESET_CAR_MODE:Ljava/lang/String; = "reset-car-mode"

.field private static final COMMAND_SET_CALL_DIAGNOSTIC_SERVICE:Ljava/lang/String; = "set-call-diagnostic-service"

.field private static final COMMAND_SET_DEFAULT_DIALER:Ljava/lang/String; = "set-default-dialer"

.field private static final COMMAND_SET_METRICS_TEST_DISABLED:Ljava/lang/String; = "set-metrics-test-disabled"

.field private static final COMMAND_SET_METRICS_TEST_ENABLED:Ljava/lang/String; = "set-metrics-test-enabled"

.field private static final COMMAND_SET_PHONE_ACCOUNT_DISABLED:Ljava/lang/String; = "set-phone-account-disabled"

.field private static final COMMAND_SET_PHONE_ACCOUNT_ENABLED:Ljava/lang/String; = "set-phone-account-enabled"

.field private static final COMMAND_SET_PHONE_ACCOUNT_SUGGESTION_COMPONENT:Ljava/lang/String; = "set-phone-acct-suggestion-component"

.field private static final COMMAND_SET_SIM_COUNT:Ljava/lang/String; = "set-sim-count"

.field private static final COMMAND_SET_SYSTEM_DIALER:Ljava/lang/String; = "set-system-dialer"

.field private static final COMMAND_SET_TEST_CALL_REDIRECTION_APP:Ljava/lang/String; = "set-test-call-redirection-app"

.field private static final COMMAND_SET_TEST_CALL_SCREENING_APP:Ljava/lang/String; = "set-test-call-screening-app"

.field private static final COMMAND_SET_TEST_EMERGENCY_PHONE_ACCOUNT_PACKAGE_FILTER:Ljava/lang/String; = "set-test-emergency-phone-account-package-filter"

.field private static final COMMAND_SET_USER_SELECTED_OUTGOING_PHONE_ACCOUNT:Ljava/lang/String; = "set-user-selected-outgoing-phone-account"

.field private static final COMMAND_STOP_BLOCK_SUPPRESSION:Ljava/lang/String; = "stop-block-suppression"

.field private static final COMMAND_UNREGISTER_PHONE_ACCOUNT:Ljava/lang/String; = "unregister-phone-account"

.field private static final COMMAND_WAIT_FOR_AUDIO_ACTIVE_COMPLETION:Ljava/lang/String; = "wait-for-audio-active"

.field private static final COMMAND_WAIT_FOR_AUDIO_OPS_COMPLETION:Ljava/lang/String; = "wait-for-audio-ops-complete"

.field private static final COMMAND_WAIT_ON_HANDLERS:Ljava/lang/String; = "wait-on-handlers"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTelecomService:Lcom/android/internal/telecom/ITelecomService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/android/server/telecom/TelecomShellCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelecomShellCommand;->CALLING_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telecom/ITelecomService;Landroid/content/Context;)V
    .locals 0
    .param p1, "binder"    # Lcom/android/internal/telecom/ITelecomService;
    .param p2, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 104
    iput-object p2, p0, Lcom/android/server/telecom/TelecomShellCommand;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method private callerIsRoot()Z
    .locals 1

    .line 516
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x0

    return-object v0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomShellCommand;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 502
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "accountId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "userSnInStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 507
    .local v3, "userSn":I
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v3    # "userSn":I
    .local v4, "userHandle":Landroid/os/UserHandle;
    nop

    .line 512
    new-instance v3, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v3, v0, v1, v4}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v3

    .line 508
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    .line 509
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const-string v4, "getPhoneAccountHandleFromArgs - invalid user %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid user serial number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0

    .line 532
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getTelephonyManager: Can\'t access telephony service."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not access the Telephony Service. Is the system running?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getUserHandleFromArgs()Landroid/os/UserHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "userSnInStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 489
    .local v1, "userSn":I
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v1    # "userSn":I
    .local v2, "userHandle":Landroid/os/UserHandle;
    nop

    .line 494
    return-object v2

    .line 490
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v1

    .line 491
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v2, "getPhoneAccountHandleFromArgs - invalid user %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mUserManager:Landroid/os/UserManager;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mUserManager:Landroid/os/UserManager;

    return-object v0

    .line 544
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getUserManager: Can\'t access UserManager service."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not access the UserManager Service. Is the system running?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "component"    # Ljava/lang/String;

    .line 520
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 521
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 524
    return-object v0

    .line 522
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private runAddOrRemoveCallCompanionApp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "isAdded":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 351
    .local v2, "isAddedBool":Z
    iget-object v3, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telecom/ITelecomService;->addOrRemoveTestCallCompanionApp(Ljava/lang/String;Z)V

    .line 352
    return-void
.end method

.method private runCleanupOrphanPhoneAccounts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success - cleaned up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 391
    invoke-interface {v2}, Lcom/android/internal/telecom/ITelecomService;->cleanupOrphanPhoneAccounts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  phone accounts."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method private runCleanupStuckCalls()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->cleanupStuckCalls()V

    .line 387
    return-void
.end method

.method private runGetDefaultDialer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    sget-object v2, Lcom/android/server/telecom/TelecomShellCommand;->CALLING_PACKAGE:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method private runGetMaxPhones()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 462
    return-void
.end method

.method private runGetSimConfig()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->multi_sim_config()Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method private runGetSystemDialer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    sget-object v2, Lcom/android/server/telecom/TelecomShellCommand;->CALLING_PACKAGE:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getSystemDialerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private runLogMark()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, " "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->requestLogMark(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method private runRegisterPhoneAccount()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 300
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "label":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v2

    .line 302
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 303
    .local v2, "account":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    sget-object v4, Lcom/android/server/telecom/TelecomShellCommand;->CALLING_PACKAGE:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private runRegisterSimPhoneAccount()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "isEmergencyAccount":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v1, "-e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    .line 313
    :pswitch_1
    const/4 v0, 0x1

    .line 316
    :goto_3
    goto :goto_0

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 319
    .local v1, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "address":Ljava/lang/String;
    nop

    .line 323
    if-eqz v0, :cond_2

    const/16 v3, 0x10

    :cond_2
    or-int/lit8 v3, v3, 0x6

    .line 324
    .local v3, "capabilities":I
    invoke-static {v1, v4}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 326
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 327
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telecom/PhoneAccount$Builder;->setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 328
    invoke-virtual {v6, v3}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 329
    invoke-virtual {v6, v4}, Landroid/telecom/PhoneAccount$Builder;->setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 330
    const-string v7, "tel"

    invoke-virtual {v6, v7}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 331
    const-string v7, "voicemail"

    invoke-virtual {v6, v7}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v6

    .line 332
    invoke-virtual {v6}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v6

    .line 333
    .local v6, "account":Landroid/telecom/PhoneAccount;
    iget-object v7, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    sget-object v8, Lcom/android/server/telecom/TelecomShellCommand;->CALLING_PACKAGE:Ljava/lang/String;

    invoke-interface {v7, v6, v8}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Success - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " registered."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    return-void

    :pswitch_data_0
    .packed-switch 0x5d8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private runResetCarMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->resetCarMode()V

    .line 397
    return-void
.end method

.method private runSetCallDiagnosticService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestCallDiagnosticService(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set as call diagnostic service."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method private runSetDefaultDialer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestDefaultDialer(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set as override default dialer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private runSetEmergencyPhoneAccountPackageFilter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->setTestEmergencyPhoneAccountPackageNameFilter(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Success - filter cleared"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestEmergencyPhoneAccountPackageNameFilter(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success = filter set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    :goto_0
    return-void
.end method

.method private runSetPhoneAccountEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 289
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telecom/ITelecomService;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    move-result v1

    .line 290
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    if-eqz p1, :cond_0

    const-string v4, " enabled."

    goto :goto_0

    :cond_0
    const-string v4, " disabled."

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error - is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " a valid PhoneAccount?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    :goto_1
    return-void
.end method

.method private runSetSimCount()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->callerIsRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "set-sim-count requires adb root"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    return-void

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 433
    .local v0, "numSims":I
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting sim count to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Device may reboot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    .line 435
    return-void
.end method

.method private runSetSystemDialer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "flatComponentName":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomShellCommand;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 411
    .local v1, "componentName":Landroid/content/ComponentName;
    :goto_0
    iget-object v2, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v2, v1}, Lcom/android/internal/telecom/ITelecomService;->setSystemDialer(Landroid/content/ComponentName;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set as override system dialer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method private runSetTestCallRedirectionApp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestDefaultCallRedirectionApp(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private runSetTestCallScreeningApp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setTestDefaultCallScreeningApp(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method private runSetTestPhoneAcctSuggestionComponent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "componentName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getUserHandleFromArgs()Landroid/os/UserHandle;

    move-result-object v1

    .line 365
    .local v1, "userHandle":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/ITelecomService;->setTestPhoneAcctSuggestionComponent(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 366
    return-void
.end method

.method private runSetUserSelectedOutgoingPhoneAccount()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "runSetUserSelectedOutgoingPhoneAccount"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 371
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set as default outgoing account."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private runStopBlockSuppression()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->stopBlockSuppression()V

    .line 383
    return-void
.end method

.method private runUnregisterPhoneAccount()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 377
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    sget-object v2, Lcom/android/server/telecom/TelecomShellCommand;->CALLING_PACKAGE:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telecom/ITelecomService;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unregistered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private runWaitOnHandler()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 114
    :cond_0
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "set-phone-acct-suggestion-component"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "register-phone-account"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "wait-for-audio-ops-complete"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "log-mark"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "get-sim-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "set-test-emergency-phone-account-package-filter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "cleanup-stuck-calls"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "is-non-ui-in-call-service-bound"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "set-default-dialer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "set-metrics-test-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "set-phone-account-disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "get-default-dialer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "get-system-dialer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "set-test-call-screening-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "set-phone-account-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "set-test-call-redirection-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "wait-for-audio-active"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "set-metrics-test-disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "set-system-dialer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "set-call-diagnostic-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "cleanup-orphan-phone-accounts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "register-sim-phone-account"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_16
    const-string v2, "set-sim-count"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x14

    goto :goto_1

    :sswitch_17
    const-string v2, "reset-car-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    goto :goto_1

    :sswitch_18
    const-string v2, "stop-block-suppression"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_19
    const-string v2, "add-or-remove-call-companion-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1a
    const-string v2, "get-max-phones"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x16

    goto :goto_1

    :sswitch_1b
    const-string v2, "wait-on-handlers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x13

    goto :goto_1

    :sswitch_1c
    const-string v2, "unregister-phone-account"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_1d
    const-string v2, "set-user-selected-outgoing-phone-account"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/TelecomShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3

    .line 203
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v2, v3}, Lcom/android/internal/telecom/ITelecomService;->waitForAudioToUpdate(Z)V

    .line 204
    goto/16 :goto_2

    .line 200
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v2, v0}, Lcom/android/internal/telecom/ITelecomService;->waitForAudioToUpdate(Z)V

    .line 201
    goto/16 :goto_2

    .line 197
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v2, v0}, Lcom/android/internal/telecom/ITelecomService;->setMetricsTestMode(Z)V

    .line 198
    goto/16 :goto_2

    .line 194
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v2, v3}, Lcom/android/internal/telecom/ITelecomService;->setMetricsTestMode(Z)V

    .line 195
    goto/16 :goto_2

    .line 191
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runLogMark()V

    .line 192
    goto/16 :goto_2

    .line 188
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runSetEmergencyPhoneAccountPackageFilter()V

    .line 189
    goto/16 :goto_2

    .line 185
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runIsNonUiInCallServiceBound()V

    .line 186
    goto/16 :goto_2

    .line 182
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runGetMaxPhones()V

    .line 183
    goto/16 :goto_2

    .line 179
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runGetSimConfig()V

    .line 180
    goto :goto_2

    .line 176
    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runSetSimCount()V

    .line 177
    goto :goto_2

    .line 173
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runWaitOnHandler()V

    .line 174
    goto :goto_2

    .line 170
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runGetSystemDialer()V

    .line 171
    goto :goto_2

    .line 167
    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runSetSystemDialer()V

    .line 168
    goto :goto_2

    .line 164
    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runGetDefaultDialer()V

    .line 165
    goto :goto_2

    .line 161
    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runSetDefaultDialer()V

    .line 162
    goto :goto_2

    .line 158
    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runResetCarMode()V

    .line 159
    goto :goto_2

    .line 155
    :pswitch_10
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runCleanupOrphanPhoneAccounts()V

    .line 156
    goto :goto_2

    .line 152
    :pswitch_11
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runCleanupStuckCalls()V

    .line 153
    goto :goto_2

    .line 149
    :pswitch_12
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runStopBlockSuppression()V

    .line 150
    goto :goto_2

    .line 146
    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runUnregisterPhoneAccount()V

    .line 147
    goto :goto_2

    .line 143
    :pswitch_14
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runSetUserSelectedOutgoingPhoneAccount()V

    .line 144
    goto :goto_2

    .line 140
    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runRegisterSimPhoneAccount()V

    .line 141
    goto :goto_2

    .line 137
    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runSetCallDiagnosticService()V

    .line 138
    goto :goto_2

    .line 134
    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runSetTestPhoneAcctSuggestionComponent()V

    .line 135
    goto :goto_2

    .line 131
    :pswitch_18
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runAddOrRemoveCallCompanionApp()V

    .line 132
    goto :goto_2

    .line 128
    :pswitch_19
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runSetTestCallScreeningApp()V

    .line 129
    goto :goto_2

    .line 125
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runSetTestCallRedirectionApp()V

    .line 126
    goto :goto_2

    .line 122
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomShellCommand;->runRegisterPhoneAccount()V

    .line 123
    goto :goto_2

    .line 119
    :pswitch_1c
    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomShellCommand;->runSetPhoneAccountEnabled(Z)V

    .line 120
    goto :goto_2

    .line 116
    :pswitch_1d
    invoke-direct {p0, v3}, Lcom/android/server/telecom/TelecomShellCommand;->runSetPhoneAccountEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    nop

    .line 211
    :goto_2
    nop

    .line 212
    return v0

    .line 206
    :goto_3
    return v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    return v1

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->onHelp()V

    .line 111
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7a8d0bd8 -> :sswitch_1d
        -0x78b6b703 -> :sswitch_1c
        -0x709eb1c1 -> :sswitch_1b
        -0x691ad7db -> :sswitch_1a
        -0x69167f24 -> :sswitch_19
        -0x66a09118 -> :sswitch_18
        -0x60ad7146 -> :sswitch_17
        -0x5af20f12 -> :sswitch_16
        -0x56488e52 -> :sswitch_15
        -0x55ef451f -> :sswitch_14
        -0x55e4920d -> :sswitch_13
        -0x46f334b0 -> :sswitch_12
        -0x40472d5e -> :sswitch_11
        -0x37cc3b47 -> :sswitch_10
        -0x32e5713f -> :sswitch_f
        -0x267cade9 -> :sswitch_e
        -0x1f8f9cb5 -> :sswitch_d
        -0xee99cbc -> :sswitch_c
        -0x3510380 -> :sswitch_b
        0x52b4e66 -> :sswitch_a
        0x1956565b -> :sswitch_9
        0x338595f4 -> :sswitch_8
        0x3797ef29 -> :sswitch_7
        0x3deee0bb -> :sswitch_6
        0x5182a52a -> :sswitch_5
        0x66476bcf -> :sswitch_4
        0x7542efb6 -> :sswitch_3
        0x78576167 -> :sswitch_2
        0x79432324 -> :sswitch_1
        0x7c1038e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "usage: telecom [subcommand] [options]\nusage: telecom set-phone-account-enabled <COMPONENT> <ID> <USER_SN>\nusage: telecom set-phone-account-disabled <COMPONENT> <ID> <USER_SN>\nusage: telecom register-phone-account <COMPONENT> <ID> <USER_SN> <LABEL>\nusage: telecom register-sim-phone-account [-e] <COMPONENT> <ID> <USER_SN> <LABEL>: registers a PhoneAccount with CAPABILITY_SIM_SUBSCRIPTION and optionally CAPABILITY_PLACE_EMERGENCY_CALLS if \"-e\" is provided\nusage: telecom set-user-selected-outgoing-phone-account [-e] <COMPONENT> <ID> <USER_SN>\nusage: telecom set-test-call-redirection-app <PACKAGE>\nusage: telecom set-test-call-screening-app <PACKAGE>\nusage: telecom set-phone-acct-suggestion-component <COMPONENT>\nusage: telecom add-or-remove-call-companion-app <PACKAGE> <1/0>\nusage: telecom register-sim-phone-account <COMPONENT> <ID> <USER_SN> <LABEL> <ADDRESS>\nusage: telecom unregister-phone-account <COMPONENT> <ID> <USER_SN>\nusage: telecom set-call-diagnostic-service <PACKAGE>\nusage: telecom set-default-dialer <PACKAGE>\nusage: telecom get-default-dialer\nusage: telecom get-system-dialer\nusage: telecom wait-on-handlers\nusage: telecom set-sim-count <COUNT>\nusage: telecom get-sim-config\nusage: telecom get-max-phones\nusage: telecom stop-block-suppression: Stop suppressing the blocked number provider after a call to emergency services.\nusage: telecom cleanup-stuck-calls: Clear any disconnected calls that have gotten wedged in Telecom.\nusage: telecom cleanup-orphan-phone-accounts: remove any phone accounts that no longer have a valid UserHandle or accounts that no longer belongs to an installed package.\nusage: telecom set-emer-phone-account-filter <PACKAGE>\n\ntelecom set-phone-account-enabled: Enables the given phone account, if it has already been registered with Telecom.\n\ntelecom set-phone-account-disabled: Disables the given phone account, if it has already been registered with telecom.\n\ntelecom set-call-diagnostic-service: overrides call diagnostic service.\ntelecom set-default-dialer: Sets the override default dialer to the given component; this will override whatever the dialer role is set to.\n\ntelecom get-default-dialer: Displays the current default dialer.\n\ntelecom get-system-dialer: Displays the current system dialer.\ntelecom set-system-dialer: Set the override system dialer to the given component. To remove the override, send \"default\"\n\ntelecom wait-on-handlers: Wait until all handlers finish their work.\n\ntelecom set-sim-count: Set num SIMs (2 for DSDS, 1 for single SIM. This may restart the device.\n\ntelecom get-sim-config: Get the mSIM config string. \"DSDS\" for DSDS mode, or \"\" for single SIM\n\ntelecom get-max-phones: Get the max supported phones from the modem.\ntelecom set-test-emergency-phone-account-package-filter <PACKAGE>: sets a package name that will be used for test emergency calls. To clear, send an empty package name. Real emergency calls will still be placed over Telephony.\ntelecom log-mark <MESSAGE>: emits a message into the telecom logs.  Useful for testers to indicate where in the logs various test steps take place.\ntelecom is-non-ui-in-call-service-bound <PACKAGE>: queries a particular non-ui-InCallService in InCallController to determine if it is bound \ntelecom set-metrics-test-enabled: Enable the metrics test mode.\ntelecom set-metrics-test-disabled: Disable the metrics test mode.\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public runIsNonUiInCallServiceBound()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "No Argument passed. Please pass a <PACKAGE_NAME> to lookup."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomShellCommand;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 446
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isNonUiInCallServiceBound(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    :goto_0
    return-void
.end method
