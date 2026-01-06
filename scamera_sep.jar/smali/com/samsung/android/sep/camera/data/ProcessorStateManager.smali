.class public Lcom/samsung/android/sep/camera/data/ProcessorStateManager;
.super Ljava/lang/Object;
.source "ProcessorStateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessorStateManager"


# instance fields
.field private volatile mState:Lcom/samsung/android/sep/camera/data/ProcessState;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sep/camera/data/ProcessState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/sep/camera/data/ProcessState;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->mState:Lcom/samsung/android/sep/camera/data/ProcessState;

    .line 12
    return-void
.end method


# virtual methods
.method public checkIllegalState(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/data/ProcessState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Invalid state! :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getStateValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessorStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called in invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getState()Lcom/samsung/android/sep/camera/data/ProcessState;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->mState:Lcom/samsung/android/sep/camera/data/ProcessState;

    return-object v0
.end method

.method public getStateValue()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->mState:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/sep/camera/data/ProcessState;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->mState:Lcom/samsung/android/sep/camera/data/ProcessState;

    .line 30
    return-void
.end method
