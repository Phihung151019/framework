.class public abstract Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;
.super Landroid/os/Binder;
.source "ISehPQCOperation.java"

# interfaces
.implements Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abort:I = 0x3

.field static final TRANSACTION_finish:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_update:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->markVintfStability()V

    .line 56
    sget-object v0, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation;

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 80
    sparse-switch p0, :sswitch_data_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 96
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 100
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 92
    :sswitch_2
    const-string v0, "abort"

    return-object v0

    .line 88
    :sswitch_3
    const-string v0, "finish"

    return-object v0

    .line 84
    :sswitch_4
    const-string v0, "update"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 75
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 296
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 111
    invoke-static {p1}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    sget-object v0, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 116
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v2

    .line 123
    :cond_1
    if-ne p1, v1, :cond_2

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v2

    .line 128
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v2

    .line 133
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->abort()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 148
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 150
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 152
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 153
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v1, v3, v4}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->finish([B[B[B)[B

    move-result-object v5

    .line 155
    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 157
    goto :goto_0

    .line 138
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v5    # "_result":[B
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 139
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCOperation$Stub;->update([B)[B

    move-result-object v3

    .line 141
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    nop

    .line 170
    .end local v1    # "_arg0":[B
    .end local v3    # "_result":[B
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
