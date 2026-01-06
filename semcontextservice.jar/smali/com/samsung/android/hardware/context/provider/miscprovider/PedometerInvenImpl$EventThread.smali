.class Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;
.super Ljava/lang/Thread;
.source "PedometerInvenImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 627
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;-><init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "interrupt":I
    sget-object v1, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 634
    .local v1, "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    const/4 v2, 0x0

    .line 635
    .local v2, "intFile":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 636
    .local v3, "cadFile":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 639
    .local v4, "stepFile":Ljava/io/BufferedReader;
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v5}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fgetmIsStarted(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 642
    const/16 v5, 0x800

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    new-array v5, v5, [C

    .line 643
    .local v5, "buffer":[C
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v12}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fgetmPrefix(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/event_shealth_int"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v8

    .line 644
    nop

    .line 645
    invoke-virtual {v2, v5}, Ljava/io/BufferedReader;->read([C)I

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    .local v8, "len":I
    const/4 v9, -0x1

    const-string v10, "SemContext.MiscProvider.PedometerInvenImpl"

    if-eq v8, v9, :cond_0

    .line 647
    add-int/lit8 v11, v8, -0x1

    :try_start_1
    invoke-static {v5, v6, v11}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move v0, v11

    .line 648
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Interrupt = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v8    # "len":I
    :cond_0
    and-int/lit8 v8, v0, 0x1

    if-ne v8, v7, :cond_1

    .line 653
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v14}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fgetmPrefix(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/shealth_cadence"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v8

    .line 654
    nop

    .line 655
    invoke-virtual {v3, v5}, Ljava/io/BufferedReader;->read([C)I

    move-result v8

    .line 656
    .restart local v8    # "len":I
    if-eq v8, v9, :cond_1

    .line 657
    add-int/lit8 v11, v8, -0x1

    invoke-static {v5, v6, v11}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v11

    .line 658
    .local v11, "strCad":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CAD = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-object v12, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object v1, v12

    .line 660
    iget-object v12, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v12, v1, v11}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$mparseCadence(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V

    .line 665
    .end local v8    # "len":I
    .end local v11    # "strCad":Ljava/lang/String;
    :cond_1
    and-int/lit8 v8, v0, 0x2

    const/4 v11, 0x2

    if-ne v8, v11, :cond_3

    .line 666
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v14}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fgetmPrefix(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/pedometer_steps"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v8

    .line 667
    nop

    .line 668
    invoke-virtual {v4, v5}, Ljava/io/BufferedReader;->read([C)I

    move-result v8

    .line 669
    .restart local v8    # "len":I
    if-eq v8, v9, :cond_3

    .line 670
    add-int/lit8 v9, v8, -0x1

    invoke-static {v5, v6, v9}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v9

    .line 671
    .local v9, "strStep":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v11, 0x6

    if-ne v0, v11, :cond_2

    .line 673
    sget-object v11, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object v1, v11

    .end local v1    # "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .local v11, "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    goto :goto_1

    .line 675
    .end local v11    # "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .restart local v1    # "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    :cond_2
    sget-object v11, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .end local v1    # "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .restart local v11    # "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    move-object v1, v11

    .line 677
    .end local v11    # "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .restart local v1    # "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    :goto_1
    iget-object v11, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v11, v1, v9}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$mparseCadence(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V

    .line 682
    .end local v8    # "len":I
    .end local v9    # "strStep":Ljava/lang/String;
    :cond_3
    and-int/lit8 v8, v0, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 683
    const-string v8, "Start walking"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_4
    and-int/lit8 v8, v0, 0x8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    .line 687
    const-string v8, "Stop walking"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-object v8, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object v1, v8

    .line 689
    iget-object v8, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    const/4 v9, 0x0

    invoke-static {v8, v1, v9}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$mparseCadence(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    .end local v5    # "buffer":[C
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v5}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fgetmTimeStamp(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v8}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fgetmTimeStamp(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v8

    aget-wide v7, v8, v7

    aput-wide v7, v5, v6

    .line 696
    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v5, v1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fputmPrevInterrupt(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;)V

    .line 697
    nop

    .line 699
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 703
    goto :goto_2

    .line 700
    :catch_0
    move-exception v5

    .line 702
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 705
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v3, :cond_6

    .line 707
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 711
    goto :goto_3

    .line 708
    :catch_1
    move-exception v5

    .line 710
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 713
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_3
    if-eqz v4, :cond_9

    .line 715
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 719
    :goto_4
    goto :goto_7

    .line 716
    :catch_2
    move-exception v5

    .line 718
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 695
    :catchall_0
    move-exception v5

    goto :goto_8

    .line 691
    :catch_3
    move-exception v5

    .line 693
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 695
    .end local v5    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v5}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fgetmTimeStamp(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v8}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fgetmTimeStamp(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v8

    aget-wide v7, v8, v7

    aput-wide v7, v5, v6

    .line 696
    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v5, v1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fputmPrevInterrupt(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;)V

    .line 697
    if-eqz v2, :cond_7

    .line 699
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 703
    goto :goto_5

    .line 700
    :catch_4
    move-exception v5

    .line 702
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 705
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 707
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 711
    goto :goto_6

    .line 708
    :catch_5
    move-exception v5

    .line 710
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 713
    .end local v5    # "e":Ljava/io/IOException;
    :cond_8
    :goto_6
    if-eqz v4, :cond_9

    .line 715
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 721
    :cond_9
    :goto_7
    goto/16 :goto_0

    .line 695
    :goto_8
    iget-object v8, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v8}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fgetmTimeStamp(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v9}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fgetmTimeStamp(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v9

    aget-wide v9, v9, v7

    aput-wide v9, v8, v6

    .line 696
    iget-object v6, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;

    invoke-static {v6, v1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->-$$Nest$fputmPrevInterrupt(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;)V

    .line 697
    if-eqz v2, :cond_a

    .line 699
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 703
    goto :goto_9

    .line 700
    :catch_6
    move-exception v6

    .line 702
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 705
    .end local v6    # "e":Ljava/io/IOException;
    :cond_a
    :goto_9
    if-eqz v3, :cond_b

    .line 707
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 711
    goto :goto_a

    .line 708
    :catch_7
    move-exception v6

    .line 710
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 713
    .end local v6    # "e":Ljava/io/IOException;
    :cond_b
    :goto_a
    if-eqz v4, :cond_c

    .line 715
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 719
    goto :goto_b

    .line 716
    :catch_8
    move-exception v6

    .line 718
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 721
    .end local v6    # "e":Ljava/io/IOException;
    :cond_c
    :goto_b
    throw v5

    .line 724
    :cond_d
    const-wide/16 v5, 0x64

    :try_start_c
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_9

    .line 728
    :goto_c
    goto/16 :goto_0

    .line 725
    :catch_9
    move-exception v5

    .line 727
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_c
.end method
