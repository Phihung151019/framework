.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 10
    .line 11
    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->access$000(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v4, "ContinuityAdapterImpl"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    const-string v6, "onServiceConnected"

    .line 19
    .line 20
    if-ne v3, v5, :cond_0

    .line 21
    .line 22
    iget-object p0, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string p0, "rebound case -> unbindService"

    .line 28
    .line 29
    invoke-static {v4, v6, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    iget-object v2, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v2, "null iContinuitySdkCommand"

    .line 50
    .line 51
    invoke-static {v4, v6, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iget-object v5, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 78
    .line 79
    invoke-virtual {v5, v3, v2, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->isMainControllerStarted(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object v5, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 87
    .line 88
    invoke-virtual {v5, v3, v2, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->registerCallback(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    :goto_0
    return-void

    .line 95
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    const-string v1, "SERVICE_STATE_CONNECTED"

    .line 101
    .line 102
    invoke-static {v4, v6, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 106
    .line 107
    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->handleServiceConnected(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
