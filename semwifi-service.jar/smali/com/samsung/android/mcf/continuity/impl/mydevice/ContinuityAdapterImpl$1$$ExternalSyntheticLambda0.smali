.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;

.field public final synthetic f$1:Landroid/os/Message;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;Landroid/os/Message;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/Message;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

    .line 11
    .line 12
    iput p5, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$5:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/Message;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

    .line 8
    .line 9
    iget v4, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;->f$5:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    .line 12
    .line 13
    const-string v5, "ContinuityAdapterImpl"

    .line 14
    .line 15
    const-string v6, "onCallback"

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object p0, v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string p0, "IContinuitySyncCloudCallback : null message"

    .line 25
    .line 26
    invoke-static {v5, v6, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget v7, v1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    const/16 v8, 0x1388

    .line 36
    .line 37
    if-eq v7, v8, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "IContinuitySyncCloudCallback : invalid callback "

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v5, v6, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getStatus(Landroid/os/Message;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object p0, v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const-string p0, "fail to syncCloud"

    .line 74
    .line 75
    invoke-static {v5, v6, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 79
    .line 80
    invoke-static {p0, v2}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->access$400(Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;I)V

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-string v1, "IContinuitySyncCloudCallback : syncCloud ok"

    .line 99
    .line 100
    invoke-static {v5, v6, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 104
    .line 105
    invoke-static {v4, v2, v3, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->access$600(ILandroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    return-void

    .line 112
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const-string v1, "SERVICE_STATE_CONNECTED"

    .line 118
    .line 119
    invoke-static {v5, v6, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 123
    .line 124
    invoke-static {v0, p0, v3}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->access$800(Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
