.class public Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/oemextension/DeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mChipId:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceState:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;->mDeviceState:Lcom/google/uwb/support/base/RequiredParam;

    .line 84
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;->mChipId:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/oemextension/DeviceStatus;
    .locals 4

    .line 97
    new-instance v0, Lcom/google/uwb/support/oemextension/DeviceStatus;

    iget-object v1, p0, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;->mDeviceState:Lcom/google/uwb/support/base/RequiredParam;

    .line 98
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;->mChipId:Lcom/google/uwb/support/base/RequiredParam;

    .line 99
    invoke-virtual {v2}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/uwb/support/oemextension/DeviceStatus;-><init>(ILjava/lang/String;Lcom/google/uwb/support/oemextension/DeviceStatus$1;)V

    .line 97
    return-object v0
.end method

.method public setChipId(Ljava/lang/String;)Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;
    .locals 1
    .param p1, "chipId"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;->mChipId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0, p1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 93
    return-object p0
.end method

.method public setDeviceState(I)Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;
    .locals 2
    .param p1, "deviceState"    # I

    .line 87
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/DeviceStatus$Builder;->mDeviceState:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 88
    return-object p0
.end method
