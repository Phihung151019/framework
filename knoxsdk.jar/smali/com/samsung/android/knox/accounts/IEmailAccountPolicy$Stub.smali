.class public abstract Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist TRANSACTION_addNewAccount:I = 0x1

.field public static final greylist TRANSACTION_addNewAccount_ex:I = 0x2

.field public static final greylist TRANSACTION_addNewAccount_new:I = 0x19

.field public static final greylist TRANSACTION_deleteAccount:I = 0x15

.field public static final greylist TRANSACTION_getAccountDetails:I = 0x14

.field public static final greylist TRANSACTION_getAccountId:I = 0x13

.field public static final greylist TRANSACTION_getAllEmailAccounts:I = 0x17

.field public static final greylist TRANSACTION_getSecurityInComingServerPassword:I = 0x1b

.field public static final greylist TRANSACTION_getSecurityOutGoingServerPassword:I = 0x1a

.field public static final greylist TRANSACTION_removePendingAccount:I = 0x18

.field public static final greylist TRANSACTION_sendAccountsChangedBroadcast:I = 0x16

.field public static final greylist TRANSACTION_setAccountName:I = 0x3

.field public static final greylist TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x6

.field public static final greylist TRANSACTION_setAsDefaultAccount:I = 0x12

.field public static final greylist TRANSACTION_setEmailAddress:I = 0x1e

.field public static final greylist TRANSACTION_setInComingProtocol:I = 0x7

.field public static final greylist TRANSACTION_setInComingServerAcceptAllCertificates:I = 0xb

.field public static final greylist TRANSACTION_setInComingServerAddress:I = 0x8

.field public static final greylist TRANSACTION_setInComingServerLogin:I = 0x1f

.field public static final greylist TRANSACTION_setInComingServerPassword:I = 0xc

.field public static final greylist TRANSACTION_setInComingServerPathPrefix:I = 0x20

.field public static final greylist TRANSACTION_setInComingServerPort:I = 0x9

.field public static final greylist TRANSACTION_setInComingServerSSL:I = 0xa

.field public static final greylist TRANSACTION_setOutGoingProtocol:I = 0x21

.field public static final greylist TRANSACTION_setOutGoingServerAcceptAllCertificates:I = 0x10

.field public static final greylist TRANSACTION_setOutGoingServerAddress:I = 0xd

.field public static final greylist TRANSACTION_setOutGoingServerLogin:I = 0x22

.field public static final greylist TRANSACTION_setOutGoingServerPassword:I = 0x11

.field public static final greylist TRANSACTION_setOutGoingServerPathPrefix:I = 0x23

.field public static final greylist TRANSACTION_setOutGoingServerPort:I = 0xe

.field public static final greylist TRANSACTION_setOutGoingServerSSL:I = 0xf

.field public static final greylist TRANSACTION_setSecurityInComingServerPassword:I = 0x1d

.field public static final greylist TRANSACTION_setSecurityOutGoingServerPassword:I = 0x1c

.field public static final greylist TRANSACTION_setSenderName:I = 0x4

.field public static final greylist TRANSACTION_setSignature:I = 0x5

.field public static final greylist TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x24

.field public static final greylist TRANSACTION_setSyncInterval:I = 0x25


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.accounts.IEmailAccountPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.accounts.IEmailAccountPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static greylist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "setSyncInterval"

    return-object p0

    :pswitch_1
    const-string p0, "setSilentVibrateOnEmailNotification"

    return-object p0

    :pswitch_2
    const-string p0, "setOutGoingServerPathPrefix"

    return-object p0

    :pswitch_3
    const-string p0, "setOutGoingServerLogin"

    return-object p0

    :pswitch_4
    const-string p0, "setOutGoingProtocol"

    return-object p0

    :pswitch_5
    const-string p0, "setInComingServerPathPrefix"

    return-object p0

    :pswitch_6
    const-string p0, "setInComingServerLogin"

    return-object p0

    :pswitch_7
    const-string p0, "setEmailAddress"

    return-object p0

    :pswitch_8
    const-string p0, "setSecurityInComingServerPassword"

    return-object p0

    :pswitch_9
    const-string p0, "setSecurityOutGoingServerPassword"

    return-object p0

    :pswitch_a
    const-string p0, "getSecurityInComingServerPassword"

    return-object p0

    :pswitch_b
    const-string p0, "getSecurityOutGoingServerPassword"

    return-object p0

    :pswitch_c
    const-string p0, "addNewAccount_new"

    return-object p0

    :pswitch_d
    const-string p0, "removePendingAccount"

    return-object p0

    :pswitch_e
    const-string p0, "getAllEmailAccounts"

    return-object p0

    :pswitch_f
    const-string p0, "sendAccountsChangedBroadcast"

    return-object p0

    :pswitch_10
    const-string p0, "deleteAccount"

    return-object p0

    :pswitch_11
    const-string p0, "getAccountDetails"

    return-object p0

    :pswitch_12
    const-string p0, "getAccountId"

    return-object p0

    :pswitch_13
    const-string p0, "setAsDefaultAccount"

    return-object p0

    :pswitch_14
    const-string p0, "setOutGoingServerPassword"

    return-object p0

    :pswitch_15
    const-string p0, "setOutGoingServerAcceptAllCertificates"

    return-object p0

    :pswitch_16
    const-string p0, "setOutGoingServerSSL"

    return-object p0

    :pswitch_17
    const-string p0, "setOutGoingServerPort"

    return-object p0

    :pswitch_18
    const-string p0, "setOutGoingServerAddress"

    return-object p0

    :pswitch_19
    const-string p0, "setInComingServerPassword"

    return-object p0

    :pswitch_1a
    const-string p0, "setInComingServerAcceptAllCertificates"

    return-object p0

    :pswitch_1b
    const-string p0, "setInComingServerSSL"

    return-object p0

    :pswitch_1c
    const-string p0, "setInComingServerPort"

    return-object p0

    :pswitch_1d
    const-string p0, "setInComingServerAddress"

    return-object p0

    :pswitch_1e
    const-string p0, "setInComingProtocol"

    return-object p0

    :pswitch_1f
    const-string p0, "setAlwaysVibrateOnEmailNotification"

    return-object p0

    :pswitch_20
    const-string p0, "setSignature"

    return-object p0

    :pswitch_21
    const-string p0, "setSenderName"

    return-object p0

    :pswitch_22
    const-string p0, "setAccountName"

    return-object p0

    :pswitch_23
    const-string p0, "addNewAccount_ex"

    return-object p0

    :pswitch_24
    const-string p0, "addNewAccount"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public greylist getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x24

    return p0
.end method

.method public greylist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "com.samsung.android.knox.accounts.IEmailAccountPolicy"

    const/4 v5, 0x1

    if-lt v1, v5, :cond_0

    const v6, 0xffffff

    if-gt v1, v6, :cond_0

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v6, 0x5f4e5446

    if-ne v1, v6, :cond_1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :cond_1
    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    move/from16 v23, v5

    goto/16 :goto_1

    :pswitch_1
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setEmailAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    sget-object v4, Lcom/samsung/android/knox/accounts/EmailAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/accounts/EmailAccount;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/EmailAccount;)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_d
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getAllEmailAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_f
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_12
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_13
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_14
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_15
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_16
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_17
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_18
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_19
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1a
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1b
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1c
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1d
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_1e
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1f
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_20
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_21
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_22
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v4, v6, v7}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_23
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move v6, v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move v7, v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move v8, v7

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v9, v8

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move v10, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move v11, v10

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move v12, v11

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move v13, v12

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move v14, v13

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move v15, v14

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v15

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    move/from16 v17, v16

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    move/from16 v18, v17

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    move/from16 v19, v18

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    move/from16 v20, v19

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    move/from16 v21, v20

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    move/from16 v22, v21

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    move/from16 v23, v22

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, v0

    move-object v0, v3

    move-object v3, v1

    invoke-interface/range {v2 .. v22}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    :pswitch_24
    move-object v0, v3

    move/from16 v23, v5

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v12}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_1
    return v23

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
