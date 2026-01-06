.class public final Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityRpcManagerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mContinuityAsrManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/rpc/ContinuityAsrManagerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/rpc/ContinuityAsrManagerImpl;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/mydevice/rpc/ContinuityAsrManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityRpcManagerImpl;->mContinuityAsrManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/rpc/ContinuityAsrManagerImpl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityRpcManagerImpl;->mContinuityAsrManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/rpc/ContinuityAsrManagerImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/rpc/ContinuityAsrManagerImpl;->destroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
