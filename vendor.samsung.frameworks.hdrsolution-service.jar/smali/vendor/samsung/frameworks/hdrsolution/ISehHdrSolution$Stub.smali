.class public abstract Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;
.super Landroid/os/Binder;
.source "ISehHdrSolution.java"

# interfaces
.implements Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_updateHdrInfo:I = 0x2

.field static final TRANSACTION_updateHdrInfo2:I = 0x3

.field static final TRANSACTION_updateHdrLayerState:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    invoke-virtual {p0}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->markVintfStability()V

    .line 54
    sget-object v0, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 78
    sparse-switch p0, :sswitch_data_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 94
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 98
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 90
    :sswitch_2
    const-string v0, "updateHdrInfo2"

    return-object v0

    .line 86
    :sswitch_3
    const-string v0, "updateHdrInfo"

    return-object v0

    .line 82
    :sswitch_4
    const-string v0, "updateHdrLayerState"

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

    .line 73
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 284
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 113
    sget-object v0, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 114
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v2

    .line 121
    :cond_1
    if-ne p1, v1, :cond_2

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p0}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v2

    .line 126
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p0}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v2

    .line 131
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 154
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 157
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v1, v3}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->updateHdrInfo2(II)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_0

    .line 145
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v1}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->updateHdrInfo(I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_0

    .line 136
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 137
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v1}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->updateHdrLayerState(Z)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    nop

    .line 167
    .end local v1    # "_arg0":Z
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
