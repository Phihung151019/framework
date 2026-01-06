.class Lcom/samsung/android/knox/mtd/KMTDService$5;
.super Ljava/lang/Object;
.source "KMTDService.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/mtd/KMTDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/mtd/KMTDService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/mtd/KMTDService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/knox/mtd/KMTDService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 679
    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 17

    .line 683
    move-object/from16 v0, p0

    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPrimaryClipChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 685
    .local v1, "identity":J
    const/4 v3, 0x0

    .line 686
    .local v3, "clipData":Landroid/content/ClipData;
    const/4 v4, 0x0

    .line 687
    .local v4, "clipboardContent":Ljava/lang/String;
    const/4 v5, 0x0

    .line 688
    .local v5, "clipSourcePackage":Ljava/lang/String;
    const/4 v6, -0x1

    .line 689
    .local v6, "clipSourceUid":I
    const/4 v7, -0x1

    .line 690
    .local v7, "currentUserId":I
    iget-object v8, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v8}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetclipboardManager(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/ClipboardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 691
    iget-object v8, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v8}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetclipboardManager(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/ClipboardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    .line 692
    if-eqz v3, :cond_1

    .line 693
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 694
    .local v8, "clipText":Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    .line 695
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 697
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Clipboard Text is Empty !!!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .end local v8    # "clipText":Ljava/lang/CharSequence;
    :goto_0
    goto :goto_1

    .line 699
    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ClipData is Empty !!!"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 701
    :cond_2
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    const-string v10, "primaryClip is empty !!!"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_1
    iget-object v8, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v8}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetclipboardManager(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/ClipboardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClipSource()Ljava/lang/String;

    move-result-object v5

    .line 705
    iget-object v8, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v8}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/Context;

    move-result-object v8

    const-string v10, "activity"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 706
    .local v8, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 707
    .local v10, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 708
    .local v11, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v7, v11, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 710
    iget-object v12, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v12}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$mClipboardAnalysisEnabled(Lcom/samsung/android/knox/mtd/KMTDService;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 711
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetprevCopiedUrl()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetprevCopiedSource()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetprevCopiedUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetprevCopiedSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetprevCopiedTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-static {v12, v13, v14}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$mabsoluteValue(Lcom/samsung/android/knox/mtd/KMTDService;J)J

    move-result-wide v12

    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetCOPY_COOLDOWN_TIMER()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_3

    .line 712
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    const-string v12, "Copied Data already analyzed !!!"

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 713
    :cond_3
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 714
    invoke-static {v4}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfputprevCopiedUrl(Ljava/lang/String;)V

    .line 715
    invoke-static {v5}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfputprevCopiedSource(Ljava/lang/String;)V

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfputprevCopiedTime(J)V

    .line 717
    iget-object v12, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v12}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$smisDeviceManaged(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    :goto_2
    goto :goto_3

    :cond_4
    iget-object v12, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v12}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$smisManagedUserId(Landroid/content/Context;I)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    .line 718
    .local v9, "isPrivate":I
    :goto_3
    if-nez v9, :cond_7

    .line 719
    iget-object v12, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v12}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$smisDeviceManaged(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 720
    iget-object v12, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    sget-object v13, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->DEVICE_OWNER:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v13}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->ordinal()I

    move-result v13

    invoke-static {v12, v4, v5, v7, v13}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$mmAnalyzeClipboardContent(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 722
    :cond_6
    iget-object v12, v0, Lcom/samsung/android/knox/mtd/KMTDService$5;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    sget-object v13, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->MANAGED:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v13}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->ordinal()I

    move-result v13

    invoke-static {v12, v4, v5, v7, v13}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$mmAnalyzeClipboardContent(Lcom/samsung/android/knox/mtd/KMTDService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 725
    :cond_7
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Clipboard Analysis is not supported in Private Mode !!!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    .end local v9    # "isPrivate":I
    :goto_4
    goto :goto_5

    .line 728
    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    const-string v12, "Clip data can\'t be fetched for analysis!!!"

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 731
    :cond_9
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    const-string v12, "Clipboard Analysis is not enabled !!!"

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    return-void
.end method
