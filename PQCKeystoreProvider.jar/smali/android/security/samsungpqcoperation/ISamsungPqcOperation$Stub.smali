.class public abstract Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub;
.super Landroid/os/Binder;
.source "ISamsungPqcOperation.java"

# interfaces
.implements Landroid/security/samsungpqcoperation/ISamsungPqcOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deleteAllKey:I = 0x4

.field static final TRANSACTION_deleteKey:I = 0x3

.field static final TRANSACTION_generateKey:I = 0x1

.field static final TRANSACTION_getKeyEntry:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.security.samsungpqcoperation.ISamsungPqcOperation"

    invoke-virtual {p0, p0, v0}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    const-string v0, "android.security.samsungpqcoperation.ISamsungPqcOperation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    if-eqz v1, :cond_1

    .line 115
    move-object v1, v0

    check-cast v1, Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    return-object v1

    .line 117
    :cond_1
    new-instance v1, Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 126
    packed-switch p0, :pswitch_data_0

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 142
    :pswitch_0
    const-string v0, "deleteAllKey"

    return-object v0

    .line 138
    :pswitch_1
    const-string v0, "deleteKey"

    return-object v0

    .line 134
    :pswitch_2
    const-string v0, "getKeyEntry"

    return-object v0

    .line 130
    :pswitch_3
    const-string v0, "generateKey"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 121
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 357
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 153
    invoke-static {p1}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const-string v0, "android.security.samsungpqcoperation.ISamsungPqcOperation"

    .line 158
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v1

    .line 165
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub;->deleteAllKey()V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    goto :goto_0

    .line 192
    :pswitch_1
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 193
    .local v2, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_0

    .line 182
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    :pswitch_2
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 183
    .restart local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;

    move-result-object v3

    .line 185
    .local v3, "_result":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    goto :goto_0

    .line 170
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_result":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    :pswitch_3
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 172
    .restart local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v3, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    .line 173
    .local v3, "_arg1":[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub;->generateKey(Landroid/system/keystore2/KeyDescriptor;[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;

    move-result-object v4

    .line 175
    .local v4, "_result":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    nop

    .line 209
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .end local v4    # "_result":Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
