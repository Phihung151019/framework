.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;ILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "initialize"

    .line 11
    .line 12
    const-string v2, "INIT_SUCCESS"

    .line 13
    .line 14
    const-string v3, "ContinuityAdapterImpl"

    .line 15
    .line 16
    invoke-static {v3, v0, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->start()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->setAppId(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;->getInstance()Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;->initialize(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
