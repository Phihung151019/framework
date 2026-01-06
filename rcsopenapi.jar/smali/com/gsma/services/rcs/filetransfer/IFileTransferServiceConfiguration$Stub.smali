.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IFileTransferServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getImageResizeOption:I = 0xa

.field static final TRANSACTION_getMaxAudioMessageLength:I = 0x3

.field static final TRANSACTION_getMaxFileTransfers:I = 0x9

.field static final TRANSACTION_getMaxSize:I = 0x2

.field static final TRANSACTION_getWarnSize:I = 0x1

.field static final TRANSACTION_isAutoAcceptEnabled:I = 0x4

.field static final TRANSACTION_isAutoAcceptInRoamingEnabled:I = 0x6

.field static final TRANSACTION_isAutoAcceptModeChangeable:I = 0x8

.field static final TRANSACTION_isGroupFileTransferSupported:I = 0xc

.field static final TRANSACTION_setAutoAccept:I = 0x5

.field static final TRANSACTION_setAutoAcceptInRoaming:I = 0x7

.field static final TRANSACTION_setImageResizeOption:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    return-object v1

    .line 88
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 92
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

    .line 96
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 104
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 191
    :pswitch_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isGroupFileTransferSupported()Z

    move-result v2

    .line 192
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 194
    goto/16 :goto_0

    .line 183
    .end local v2    # "_result":Z
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setImageResizeOption(I)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto/16 :goto_0

    .line 175
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getImageResizeOption()I

    move-result v2

    .line 176
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    goto :goto_0

    .line 168
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxFileTransfers()I

    move-result v2

    .line 169
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    goto :goto_0

    .line 161
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptModeChangeable()Z

    move-result v2

    .line 162
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 164
    goto :goto_0

    .line 153
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 154
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setAutoAcceptInRoaming(Z)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_0

    .line 145
    .end local v2    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptInRoamingEnabled()Z

    move-result v2

    .line 146
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 148
    goto :goto_0

    .line 137
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 138
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setAutoAccept(Z)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_0

    .line 129
    .end local v2    # "_arg0":Z
    :pswitch_8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptEnabled()Z

    move-result v2

    .line 130
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    goto :goto_0

    .line 122
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxAudioMessageLength()J

    move-result-wide v2

    .line 123
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    goto :goto_0

    .line 115
    .end local v2    # "_result":J
    :pswitch_a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxSize()J

    move-result-wide v2

    .line 116
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    goto :goto_0

    .line 108
    .end local v2    # "_result":J
    :pswitch_b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getWarnSize()J

    move-result-wide v2

    .line 109
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    nop

    .line 201
    .end local v2    # "_result":J
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
