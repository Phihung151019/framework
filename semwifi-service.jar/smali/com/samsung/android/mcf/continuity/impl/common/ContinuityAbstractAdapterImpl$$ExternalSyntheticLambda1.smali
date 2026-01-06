.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v1, "onServiceDisconnected"

    .line 20
    .line 21
    const-string v2, "-"

    .line 22
    .line 23
    const-string v3, "ContinuityAdapterImpl"

    .line 24
    .line 25
    invoke-static {v3, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->access$002(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->destroy()V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;

    .line 39
    .line 40
    const/4 v1, 0x6

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const-string v1, "unbindService"

    .line 60
    .line 61
    const-string v2, "-"

    .line 62
    .line 63
    const-string v3, "ContinuityAdapterImpl"

    .line 64
    .line 65
    invoke-static {v3, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-string v1, "release"

    .line 84
    .line 85
    const-string v2, "-"

    .line 86
    .line 87
    const-string v3, "ContinuityAdapterImpl"

    .line 88
    .line 89
    invoke-static {v3, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->setAppId(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;->getInstance()Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;->release()V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdown()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
