.class public abstract Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;
.super Landroid/os/Binder;
.source "IGroupFileTransferListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDeleted:I = 0x4

.field static final TRANSACTION_onDeliveryInfoChanged:I = 0x2

.field static final TRANSACTION_onDeliveryInfoChanged1:I = 0x5

.field static final TRANSACTION_onProgressUpdate:I = 0x3

.field static final TRANSACTION_onStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.gsma.services.rcs.filetransfer.IGroupFileTransferListener"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "com.gsma.services.rcs.filetransfer.IGroupFileTransferListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 62
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const-string v7, "com.gsma.services.rcs.filetransfer.IGroupFileTransferListener"

    .line 67
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_0

    const v0, 0xffffff

    if-gt p1, v0, :cond_0

    .line 68
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    :cond_0
    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_1

    .line 71
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v8

    .line 74
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 153
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 137
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 143
    .local v3, "_arg2":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    .line 145
    .local v4, "_arg3":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 146
    .local v5, "_arg4":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onDeliveryInfoChanged1(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto/16 :goto_0

    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v4    # "_arg3":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .end local v5    # "_arg4":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 129
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v1, v2}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onDeleted(Ljava/lang/String;Ljava/util/List;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_0

    .line 111
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 117
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 118
    .local v5, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_0

    .line 94
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":J
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 100
    .local v3, "_arg2":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    .line 102
    .restart local v4    # "_arg3":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 103
    .local v5, "_arg4":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onDeliveryInfoChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    goto :goto_0

    .line 79
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v4    # "_arg3":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .end local v5    # "_arg4":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 85
    .local v3, "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 86
    .local v4, "_arg3":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    nop

    .line 156
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .end local v4    # "_arg3":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    :goto_0
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
