.class public Lcom/google/uwb/support/base/RequiredParam;
.super Ljava/lang/Object;
.source "RequiredParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mIsSet:Z

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    .local p0, "this":Lcom/google/uwb/support/base/RequiredParam;, "Lcom/google/uwb/support/base/RequiredParam<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/uwb/support/base/RequiredParam;->mIsSet:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/google/uwb/support/base/RequiredParam;, "Lcom/google/uwb/support/base/RequiredParam<TT;>;"
    iget-boolean v0, p0, Lcom/google/uwb/support/base/RequiredParam;->mIsSet:Z

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/uwb/support/base/RequiredParam;->mValue:Ljava/lang/Object;

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required Parameter not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSet()Z
    .locals 1

    .line 37
    .local p0, "this":Lcom/google/uwb/support/base/RequiredParam;, "Lcom/google/uwb/support/base/RequiredParam<TT;>;"
    iget-boolean v0, p0, Lcom/google/uwb/support/base/RequiredParam;->mIsSet:Z

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/google/uwb/support/base/RequiredParam;, "Lcom/google/uwb/support/base/RequiredParam<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/uwb/support/base/RequiredParam;->mValue:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/uwb/support/base/RequiredParam;->mIsSet:Z

    .line 27
    return-void
.end method
