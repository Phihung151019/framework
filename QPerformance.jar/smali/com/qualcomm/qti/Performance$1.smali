.class Lcom/qualcomm/qti/Performance$1;
.super Landroid/os/Handler;
.source "Performance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/Performance;->initLLHandlerCallback(Landroid/os/HandlerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/qualcomm/qti/Performance;


# direct methods
.method constructor blacklist <init>(Lcom/qualcomm/qti/Performance;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/Performance;
    .param p2, "arg0"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 609
    iput-object p1, p0, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 612
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 613
    .local v3, "totalSize":I
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/qualcomm/qti/Performance;->-$$Nest$mgetLaunchFeatureInitState(Lcom/qualcomm/qti/Performance;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    return-void

    .line 616
    :cond_0
    if-eqz v2, :cond_e

    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmFDCountData(Lcom/qualcomm/qti/Performance;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_a

    .line 619
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 620
    .local v5, "pkgName":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 621
    return-void

    .line 623
    :cond_2
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0, v5}, Lcom/qualcomm/qti/Performance;->-$$Nest$mgetLaunchFeatureThreadStatePid(Lcom/qualcomm/qti/Performance;Ljava/lang/String;)I

    move-result v6

    .line 625
    .local v6, "extPid":I
    if-gtz v6, :cond_3

    .line 626
    return-void

    .line 629
    :cond_3
    iget v7, v2, Landroid/os/Message;->what:I

    .line 630
    .local v7, "pid":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_5

    if-ne v6, v4, :cond_5

    .line 634
    :try_start_0
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmPIDWaitSleepTime(Lcom/qualcomm/qti/Performance;)I

    move-result v0

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "Perf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in Handler Thread Sleep"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0, v5, v7}, Lcom/qualcomm/qti/Performance;->-$$Nest$mwaitForPID(Lcom/qualcomm/qti/Performance;Ljava/lang/String;I)I

    move-result v6

    .line 639
    if-le v6, v4, :cond_4

    .line 640
    move v7, v6

    goto :goto_1

    .line 641
    :cond_4
    if-gtz v6, :cond_6

    .line 642
    return-void

    .line 644
    :cond_5
    if-ne v7, v0, :cond_6

    if-le v6, v4, :cond_6

    .line 645
    move v8, v6

    .line 646
    .end local v7    # "pid":I
    .local v8, "pid":I
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmPidLock(Lcom/qualcomm/qti/Performance;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 647
    :try_start_1
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0, v8}, Lcom/qualcomm/qti/Performance;->-$$Nest$fputmLastPid(Lcom/qualcomm/qti/Performance;I)V

    .line 648
    monitor-exit v9

    move v7, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 650
    .end local v8    # "pid":I
    .restart local v7    # "pid":I
    :cond_6
    :goto_1
    iget v8, v2, Landroid/os/Message;->arg1:I

    .line 651
    .local v8, "hint_type":I
    iget v9, v2, Landroid/os/Message;->arg2:I

    .line 652
    .local v9, "hint_id":I
    iget v10, v2, Landroid/os/Message;->sendingUid:I

    .line 653
    .local v10, "appType":I
    const/4 v0, 0x0

    .line 654
    .local v0, "samples":I
    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 655
    iget-object v11, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v11}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmGameSample(Lcom/qualcomm/qti/Performance;)I

    move-result v0

    move v11, v0

    goto :goto_2

    .line 657
    :cond_7
    iget-object v11, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v11}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmAppSample(Lcom/qualcomm/qti/Performance;)I

    move-result v0

    move v11, v0

    .line 659
    .end local v0    # "samples":I
    .local v11, "samples":I
    :goto_2
    const/4 v12, 0x0

    .line 660
    .local v12, "iterator":I
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmFDCountData(Lcom/qualcomm/qti/Performance;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get Fd for "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " : "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v13, 0x40

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/proc/"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "/fdinfo"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 664
    .local v15, "DirPath":Ljava/lang/String;
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_7

    .line 665
    .local v0, "folder":Ljava/io/File;
    move-wide/from16 v16, v13

    :try_start_3
    iget-object v13, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v13}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmPidLock(Lcom/qualcomm/qti/Performance;)Ljava/lang/Object;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6

    if-nez v13, :cond_8

    .line 666
    return-void

    .line 668
    :cond_8
    const/4 v12, 0x0

    move v13, v12

    move v12, v7

    move v7, v6

    move-object v6, v0

    .end local v0    # "folder":Ljava/io/File;
    .local v6, "folder":Ljava/io/File;
    .local v7, "extPid":I
    .local v12, "pid":I
    .local v13, "iterator":I
    :goto_3
    if-ge v13, v11, :cond_d

    .line 669
    :try_start_4
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmPidLock(Lcom/qualcomm/qti/Performance;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5

    .line 670
    :try_start_5
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmLastPid(Lcom/qualcomm/qti/Performance;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eq v0, v12, :cond_9

    .line 671
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v18, v5

    goto/16 :goto_7

    .line 673
    :catchall_1
    move-exception v0

    move-object/from16 v18, v5

    goto/16 :goto_6

    :cond_9
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 674
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_5

    if-nez v0, :cond_c

    .line 676
    :try_start_9
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0, v5, v12}, Lcom/qualcomm/qti/Performance;->-$$Nest$mwaitForPID(Lcom/qualcomm/qti/Performance;Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 677
    if-le v7, v4, :cond_a

    if-eq v7, v12, :cond_a

    .line 678
    move v12, v7

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/proc/"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "/fdinfo"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 680
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 682
    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1

    if-nez v0, :cond_c

    .line 683
    nop

    .line 696
    .end local v6    # "folder":Ljava/io/File;
    :cond_b
    move-object/from16 v18, v5

    goto/16 :goto_7

    .line 694
    :catch_1
    move-exception v0

    move-object/from16 v18, v5

    move v6, v7

    move v7, v12

    move v12, v13

    goto/16 :goto_8

    .line 686
    .restart local v6    # "folder":Ljava/io/File;
    :cond_c
    :try_start_a
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0, v6}, Lcom/qualcomm/qti/Performance;->-$$Nest$mgetDirectoryFileCount(Lcom/qualcomm/qti/Performance;Ljava/io/File;)I

    move-result v0

    move v14, v0

    .line 687
    .local v14, "Size":I
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0, v12, v14, v5}, Lcom/qualcomm/qti/Performance;->-$$Nest$mprocessFDInfo(Lcom/qualcomm/qti/Performance;IILjava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_5

    .line 689
    :try_start_b
    iget-object v0, v1, Lcom/qualcomm/qti/Performance$1;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmSleepTime(Lcom/qualcomm/qti/Performance;)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_5

    move-object/from16 v18, v5

    .end local v5    # "pkgName":Ljava/lang/String;
    .local v18, "pkgName":Ljava/lang/String;
    int-to-long v4, v0

    :try_start_c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_4

    .line 692
    goto :goto_5

    .line 690
    :catch_2
    move-exception v0

    goto :goto_4

    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v18, v5

    .line 691
    .end local v5    # "pkgName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "pkgName":Ljava/lang/String;
    :goto_4
    :try_start_d
    const-string v4, "Perf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in Handler Thread Sleep"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_4

    .line 668
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "Size":I
    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v18

    goto/16 :goto_3

    .line 673
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v5

    .end local v5    # "pkgName":Ljava/lang/String;
    .restart local v18    # "pkgName":Ljava/lang/String;
    :goto_6
    :try_start_e
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .end local v3    # "totalSize":I
    .end local v7    # "extPid":I
    .end local v8    # "hint_type":I
    .end local v9    # "hint_id":I
    .end local v10    # "appType":I
    .end local v11    # "samples":I
    .end local v12    # "pid":I
    .end local v13    # "iterator":I
    .end local v15    # "DirPath":Ljava/lang/String;
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local p0    # "this":Lcom/qualcomm/qti/Performance$1;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_4

    .line 694
    .end local v6    # "folder":Ljava/io/File;
    .restart local v3    # "totalSize":I
    .restart local v7    # "extPid":I
    .restart local v8    # "hint_type":I
    .restart local v9    # "hint_id":I
    .restart local v10    # "appType":I
    .restart local v11    # "samples":I
    .restart local v12    # "pid":I
    .restart local v13    # "iterator":I
    .restart local v15    # "DirPath":Ljava/lang/String;
    .restart local v18    # "pkgName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/qualcomm/qti/Performance$1;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_4
    move-exception v0

    move v6, v7

    move v7, v12

    move v12, v13

    goto :goto_8

    .line 673
    .restart local v6    # "folder":Ljava/io/File;
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 694
    .end local v6    # "folder":Ljava/io/File;
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v18, v5

    move v6, v7

    move v7, v12

    move v12, v13

    .end local v5    # "pkgName":Ljava/lang/String;
    .restart local v18    # "pkgName":Ljava/lang/String;
    goto :goto_8

    .line 668
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "folder":Ljava/io/File;
    :cond_d
    move-object/from16 v18, v5

    .line 696
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "folder":Ljava/io/File;
    .restart local v18    # "pkgName":Ljava/lang/String;
    :goto_7
    goto :goto_9

    .line 694
    .end local v13    # "iterator":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .local v6, "extPid":I
    .local v7, "pid":I
    .local v12, "iterator":I
    :catch_6
    move-exception v0

    move-object/from16 v18, v5

    .end local v5    # "pkgName":Ljava/lang/String;
    .restart local v18    # "pkgName":Ljava/lang/String;
    goto :goto_8

    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v18, v5

    move-wide/from16 v16, v13

    .line 695
    .end local v5    # "pkgName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v18    # "pkgName":Ljava/lang/String;
    :goto_8
    const-string v1, "Perf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Security Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    move v12, v7

    move v7, v6

    .line 697
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v6    # "extPid":I
    .local v7, "extPid":I
    .local v12, "pid":I
    .restart local v13    # "iterator":I
    :goto_9
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 698
    return-void

    .line 617
    .end local v7    # "extPid":I
    .end local v8    # "hint_type":I
    .end local v9    # "hint_id":I
    .end local v10    # "appType":I
    .end local v11    # "samples":I
    .end local v12    # "pid":I
    .end local v13    # "iterator":I
    .end local v15    # "DirPath":Ljava/lang/String;
    .end local v18    # "pkgName":Ljava/lang/String;
    :cond_e
    :goto_a
    return-void
.end method
