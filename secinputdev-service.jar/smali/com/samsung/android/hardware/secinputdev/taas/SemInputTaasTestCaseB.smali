.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;
.super Ljava/lang/Object;
.source "SemInputTaasTestCaseB.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputTaasTestCaseB"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

.field private prv_tool_type:I


# direct methods
.method public static synthetic $r8$lambda$5-nna2m14Y46u6QgUbFZn4HRkyY(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->lambda$runEvent$0(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UNL9GKTE6-E8fUpaeWZ8SznZiDU(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->runEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->mContext:Landroid/content/Context;

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->prv_tool_type:I

    return-void
.end method

.method private increaseCount(Ljava/lang/String;)V
    .locals 8
    .param p1, "buf"    # Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    .local v0, "mNow":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 73
    .local v2, "mDate":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MMdd/HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 74
    .local v3, "mFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "getTime":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa0

    if-le v5, v6, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "TaasLog":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v5    # "TaasLog":Ljava/lang/String;
    :cond_0
    move-object v5, p1

    .line 83
    .restart local v5    # "TaasLog":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-virtual {v6}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->setCaseBCount()V

    .line 84
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    const-string v7, "B"

    invoke-virtual {v6, v4, v5, v7}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->writeForCaseToEfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private synthetic lambda$runEvent$0(ILjava/lang/String;)V
    .locals 0
    .param p1, "toolType"    # I
    .param p2, "deviceName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->runEvent(ILjava/lang/String;)V

    .line 45
    return-void
.end method

.method private runEvent(ILjava/lang/String;)V
    .locals 9
    .param p1, "cur_tool_type"    # I
    .param p2, "deviceName"    # Ljava/lang/String;

    .line 49
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->prv_tool_type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->prv_tool_type:I

    if-ne v0, v1, :cond_3

    :cond_0
    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    .line 52
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 53
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 58
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "topActivityName":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " && "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "logStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sec_input] CASEB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->prv_tool_type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->writePerfLog(Ljava/lang/String;)V

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sec_input] CASEB : tool type change pre("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->prv_tool_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") : cur("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 64
    invoke-static {p1}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    const-string v6, "SemInputTaasTestCaseB"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, v4}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->increaseCount(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "topActivityName":Ljava/lang/String;
    .end local v4    # "logStr":Ljava/lang/String;
    :cond_2
    :goto_0
    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->prv_tool_type:I

    .line 56
    return-void

    .line 67
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    :goto_1
    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->prv_tool_type:I

    .line 68
    return-void
.end method

.method private runEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "mEvent"    # Landroid/view/MotionEvent;

    .line 36
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    .line 37
    .local v0, "toolType":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v1, "deviceName":Ljava/lang/String;
    nop

    .line 43
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->post(Ljava/lang/Runnable;)V

    .line 46
    return-void

    .line 38
    .end local v0    # "toolType":I
    .end local v1    # "deviceName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemInputTaasTestCaseB"

    const-string v2, "get Device Name fail"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 40
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalApi"    # Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->registerMotionEventListener(Ljava/util/function/Consumer;)V

    .line 29
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 88
    return-void
.end method
