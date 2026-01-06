.class Lcom/android/server/ssrm/CustomFrequencyManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 657
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 660
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitScrollBooster(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 663
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitPerfettoLogging(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 664
    new-instance v0, Landroid/os/HandlerThread;

    const-string v6, "CFMS Handler Thread"

    invoke-direct {v0, v6, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$sfputsHandlerThread(Landroid/os/HandlerThread;)V

    .line 665
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$sfgetsHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 667
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    new-instance v5, Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;

    new-instance v6, Landroid/os/Handler;

    .line 668
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmSetupWizardObserver(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;)V

    .line 670
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->DISABLE_HEAVYUSER:Z

    if-nez v0, :cond_0

    .line 671
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    new-instance v5, Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-direct {v5, v2}, Lcom/android/server/ssrm/DynamicLoadDetector;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/DynamicLoadDetector;)V

    .line 674
    :cond_0
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    new-instance v5, Lcom/android/server/ssrm/PalmInputEventChecker;

    sget-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v7, v7, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    invoke-direct {v5, v6, v7}, Lcom/android/server/ssrm/PalmInputEventChecker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmPalmInputEventChecker(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/PalmInputEventChecker;)V

    .line 675
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    new-instance v5, Lcom/android/server/ssrm/CPUSetController;

    sget-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/ssrm/CPUSetController;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmCPUSetController(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CPUSetController;)V

    goto/16 :goto_8

    .line 677
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 678
    const-string v0, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    .line 683
    :cond_2
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_14

    .line 684
    const-string v0, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    .line 690
    :cond_3
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 691
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v5, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    goto/16 :goto_8

    .line 692
    :cond_4
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 693
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v5, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 694
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->bootComplete()V

    .line 696
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    new-instance v5, Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;

    invoke-direct {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;-><init>()V

    invoke-static {v0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmShutdownReceiver(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;)V

    .line 697
    invoke-static {v2}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmShutdownReceiver(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    goto/16 :goto_8

    .line 704
    :cond_5
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "com.sec.android.sdhms"

    if-eqz v0, :cond_9

    .line 705
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 706
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_8

    .line 707
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 708
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 710
    :try_start_0
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPm(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v7, 0x2000

    invoke-virtual {v0, v9, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 712
    .local v0, "pkginfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_7

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_7

    .line 713
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_6

    .line 715
    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPm(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v9, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    goto :goto_0

    .line 717
    :cond_6
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v5, v7

    if-nez v5, :cond_7

    .line 719
    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPm(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v9, v6}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .end local v0    # "pkginfo":Landroid/content/pm/PackageInfo;
    :cond_7
    :goto_0
    goto :goto_1

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 727
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_8
    :goto_1
    goto/16 :goto_8

    :cond_9
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 728
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPm(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPm(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 730
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPm(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_8

    .line 733
    :cond_a
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 734
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 735
    .local v5, "pkgs":[Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 736
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 737
    .local v8, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPmInternal(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmIPm(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 739
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPmInternal(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 740
    invoke-virtual {v0, v7, v6}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Landroid/content/pm/UserPackage;

    move-result-object v6

    .line 741
    .local v6, "suspendingPackage":Landroid/content/pm/UserPackage;
    if-eqz v6, :cond_c

    .line 742
    iget-object v9, v6, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 743
    .local v9, "pkgName":Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 745
    :try_start_1
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmIPm(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v9

    move-object v9, v0

    .end local v9    # "pkgName":Ljava/lang/String;
    .local v16, "pkgName":Ljava/lang/String;
    :try_start_2
    invoke-interface/range {v9 .. v18}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 750
    goto :goto_3

    .line 748
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v16    # "pkgName":Ljava/lang/String;
    .restart local v9    # "pkgName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v16, v9

    .line 749
    .end local v9    # "pkgName":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "pkgName":Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 743
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v16    # "pkgName":Ljava/lang/String;
    .restart local v9    # "pkgName":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v9

    .line 755
    .end local v5    # "pkgs":[Ljava/lang/String;
    .end local v6    # "suspendingPackage":Landroid/content/pm/UserPackage;
    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_c
    :goto_3
    goto/16 :goto_8

    :cond_d
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 756
    const-string v0, "temperature"

    const/4 v7, -0x1

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 758
    .local v0, "batTemp":I
    const/16 v7, -0x96

    if-ge v0, v7, :cond_e

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isBoostingDisabled()Z

    move-result v7

    if-nez v7, :cond_e

    .line 759
    invoke-static {v5}, Lcom/android/server/ssrm/DeviceStatus;->disableBoosting(Z)V

    .line 760
    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmBoostDisableManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 761
    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmBoostDisableManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    goto :goto_5

    .line 763
    :cond_e
    const/16 v7, -0x46

    if-lt v0, v7, :cond_f

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isBoostingDisabled()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 764
    invoke-static {v6}, Lcom/android/server/ssrm/DeviceStatus;->disableBoosting(Z)V

    .line 765
    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmBoostDisableManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 766
    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmBoostDisableManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    goto :goto_5

    .line 769
    :cond_f
    const/16 v7, 0x1f4

    if-lt v0, v7, :cond_10

    goto :goto_4

    :cond_10
    move v5, v6

    :goto_4
    invoke-static {v5}, Lcom/android/server/ssrm/DeviceStatus;->disableHeavyDetect(Z)V

    .line 771
    .end local v0    # "batTemp":I
    :cond_11
    :goto_5
    goto :goto_8

    :cond_12
    const-string v0, "com.samsung.android.app.screenrecorder.on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 772
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmScreenRecorderEnabled(Lcom/android/server/ssrm/CustomFrequencyManagerService;Z)V

    goto :goto_8

    .line 773
    :cond_13
    const-string v0, "com.samsung.android.app.screenrecorder.off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 774
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmScreenRecorderEnabled(Lcom/android/server/ssrm/CustomFrequencyManagerService;Z)V

    goto :goto_8

    .line 685
    :cond_14
    :goto_6
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v6, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 686
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v6, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    .line 687
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 688
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->onScreenOff()V

    goto :goto_8

    .line 679
    :cond_15
    :goto_7
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v5, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 680
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 681
    iget-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->onScreenOn()V

    .line 776
    :cond_16
    :goto_8
    return-void
.end method
