.class public abstract Lcom/samsung/android/net/ISemInsyncEventListener$Stub;
.super Landroid/os/Binder;
.source "ISemInsyncEventListener.java"

# interfaces
.implements Lcom/samsung/android/net/ISemInsyncEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/net/ISemInsyncEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConfirmed:I = 0x2

.field static final TRANSACTION_onTapEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.samsung.android.net.ISemInsyncEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/net/ISemInsyncEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    const-string v0, "com.samsung.android.net.ISemInsyncEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/net/ISemInsyncEventListener;

    if-eqz v1, :cond_1

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/net/ISemInsyncEventListener;

    return-object v1

    .line 51
    :cond_1
    new-instance v1, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 55
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const-string v0, "com.samsung.android.net.ISemInsyncEventListener"

    .line 60
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 61
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 67
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 79
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 80
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->onConfirmed(Z)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    goto :goto_1

    .line 71
    .end local v2    # "_arg0":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->onTapEvent()Landroid/content/Intent;

    move-result-object v2

    .line 72
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-static {p3, v2, v1}, Lcom/samsung/android/net/ISemInsyncEventListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 74
    nop

    .line 89
    .end local v2    # "_result":Landroid/content/Intent;
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
