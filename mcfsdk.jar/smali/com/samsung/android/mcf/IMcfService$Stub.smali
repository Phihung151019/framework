.class public abstract Lcom/samsung/android/mcf/IMcfService$Stub;
.super Landroid/os/Binder;
.source "IMcfService.java"

# interfaces
.implements Lcom/samsung/android/mcf/IMcfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/IMcfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/IMcfService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_internalCommand:I = 0x3

.field static final TRANSACTION_internalStringCommand:I = 0x4

.field static final TRANSACTION_registerInsyncEventListenerDelegator:I = 0x1

.field static final TRANSACTION_unregisterInsyncEventListenerDelegator:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "com.samsung.android.mcf.IMcfService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/mcf/IMcfService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/IMcfService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    const-string v0, "com.samsung.android.mcf.IMcfService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/mcf/IMcfService;

    if-eqz v1, :cond_1

    .line 60
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/mcf/IMcfService;

    return-object v1

    .line 62
    :cond_1
    new-instance v1, Lcom/samsung/android/mcf/IMcfService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/IMcfService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 66
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const-string v0, "com.samsung.android.mcf.IMcfService"

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 75
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v1

    .line 78
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :pswitch_0
    sget-object v2, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/samsung/android/mcf/IMcfService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 111
    .local v2, "_arg0":Landroid/os/Message;
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/IMcfService$Stub;->internalStringCommand(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    goto :goto_0

    .line 101
    .end local v2    # "_arg0":Landroid/os/Message;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/samsung/android/mcf/IMcfService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 102
    .restart local v2    # "_arg0":Landroid/os/Message;
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/IMcfService$Stub;->internalCommand(Landroid/os/Message;)I

    move-result v3

    .line 103
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    goto :goto_0

    .line 92
    .end local v2    # "_arg0":Landroid/os/Message;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/net/ISemInsyncEventListener;

    move-result-object v2

    .line 93
    .local v2, "_arg0":Lcom/samsung/android/net/ISemInsyncEventListener;
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/IMcfService$Stub;->unregisterInsyncEventListenerDelegator(Lcom/samsung/android/net/ISemInsyncEventListener;)Z

    move-result v3

    .line 94
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    goto :goto_0

    .line 83
    .end local v2    # "_arg0":Lcom/samsung/android/net/ISemInsyncEventListener;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/net/ISemInsyncEventListener;

    move-result-object v2

    .line 84
    .restart local v2    # "_arg0":Lcom/samsung/android/net/ISemInsyncEventListener;
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/IMcfService$Stub;->registerInsyncEventListenerDelegator(Lcom/samsung/android/net/ISemInsyncEventListener;)Z

    move-result v3

    .line 85
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    nop

    .line 121
    .end local v2    # "_arg0":Lcom/samsung/android/net/ISemInsyncEventListener;
    .end local v3    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
