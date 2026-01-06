.class public Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;
.super Ljava/lang/Object;
.source "FiraHybridSessionControllerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mNumberOfPhases:I

.field private final mPhaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;->mPhaseList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPhaseList(Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;)Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;
    .locals 1
    .param p1, "phaseList"    # Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;

    .line 167
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;->mPhaseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-object p0
.end method

.method public build()Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;->mPhaseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;

    iget v1, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;->mNumberOfPhases:I

    iget-object v2, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;->mPhaseList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;-><init>(ILjava/util/List;Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$1;)V

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No hybrid session phase list have been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumberOfPhases(I)Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;
    .locals 0
    .param p1, "numberOfPhases"    # I

    .line 161
    iput p1, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;->mNumberOfPhases:I

    .line 162
    return-object p0
.end method
