.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;
.super Landroid/os/Binder;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field public final synthetic greylist this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;->this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    const p2, 0xffffff

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;->this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->onRevoke()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
