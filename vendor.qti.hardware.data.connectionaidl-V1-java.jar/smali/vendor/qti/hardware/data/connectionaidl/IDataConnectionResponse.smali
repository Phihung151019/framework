.class public interface abstract Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;
.super Ljava/lang/Object;
.source "IDataConnectionResponse.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;,
        Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "6d925058a8c280dd831fb437edb536759d46ce4a"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 247
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "vendor$qti$hardware$data$connectionaidl$IDataConnectionResponse"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAllBearerAllocationsResponse(I[Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBearerAllocationResponse(ILvendor/qti/hardware/data/connectionaidl/AllocatedBearers;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
