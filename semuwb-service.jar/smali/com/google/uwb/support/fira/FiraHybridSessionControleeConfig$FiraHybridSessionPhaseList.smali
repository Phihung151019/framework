.class public Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;
.super Ljava/lang/Object;
.source "FiraHybridSessionControleeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FiraHybridSessionPhaseList"
.end annotation


# instance fields
.field private final mSessionHandle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "sessionHandle"    # I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;->mSessionHandle:I

    .line 161
    return-void
.end method


# virtual methods
.method public getSessionHandle()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;->mSessionHandle:I

    return v0
.end method
