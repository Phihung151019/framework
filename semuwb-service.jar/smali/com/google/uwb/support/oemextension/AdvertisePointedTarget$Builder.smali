.class public Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;
.super Ljava/lang/Object;
.source "AdvertisePointedTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mAdvertisePointingResult:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMacAddress:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Landroid/uwb/UwbAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;->mMacAddress:Lcom/google/uwb/support/base/RequiredParam;

    .line 116
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;->mAdvertisePointingResult:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;
    .locals 3

    .line 130
    new-instance v0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;

    iget-object v1, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;->mMacAddress:Lcom/google/uwb/support/base/RequiredParam;

    .line 131
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/uwb/UwbAddress;

    iget-object v2, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;->mAdvertisePointingResult:Lcom/google/uwb/support/base/RequiredParam;

    .line 132
    invoke-virtual {v2}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;-><init>(Landroid/uwb/UwbAddress;Z)V

    .line 130
    return-object v0
.end method

.method public setAdvertisePointingResult(Z)Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;
    .locals 2
    .param p1, "advertisePointingResult"    # Z

    .line 125
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;->mAdvertisePointingResult:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 126
    return-object p0
.end method

.method public setMacAddress([B)Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;
    .locals 2
    .param p1, "macAddress"    # [B

    .line 119
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget$Builder;->mMacAddress:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 120
    return-object p0
.end method
