.class final Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;
.super Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractSessionManagerImpl;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mContinuityPreConnectionManager:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityPreConnectionManager;

.field private final mContinuityStreamingManagerImpl:Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionMessageManagerImpl;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityPreConnectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractSessionManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionMessageManagerImpl;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;->mContinuityStreamingManagerImpl:Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;->mContinuityPreConnectionManager:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityPreConnectionManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected final destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractSessionManagerImpl;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;->mContinuityStreamingManagerImpl:Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;->destroy()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;->mContinuityPreConnectionManager:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityPreConnectionManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityPreConnectionManager;->destroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
