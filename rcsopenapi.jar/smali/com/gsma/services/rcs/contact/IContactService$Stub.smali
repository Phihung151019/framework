.class public abstract Lcom/gsma/services/rcs/contact/IContactService$Stub;
.super Landroid/os/Binder;
.source "IContactService.java"

# interfaces
.implements Lcom/gsma/services/rcs/contact/IContactService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/contact/IContactService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/contact/IContactService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_blockContact:I = 0x5

.field static final TRANSACTION_getRcsContact:I = 0x1

.field static final TRANSACTION_getRcsContacts:I = 0x2

.field static final TRANSACTION_getRcsContactsOnline:I = 0x3

.field static final TRANSACTION_getRcsContactsSupporting:I = 0x4

.field static final TRANSACTION_unblockContact:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "com.gsma.services.rcs.contact.IContactService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/contact/IContactService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    const-string v0, "com.gsma.services.rcs.contact.IContactService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/contact/IContactService;

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/contact/IContactService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/contact/IContactService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 69
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

    .line 73
    const-string v0, "com.gsma.services.rcs.contact.IContactService"

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 78
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 81
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_0
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 130
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->unblockContact(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_0

    .line 120
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_1
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 121
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->blockContact(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    goto :goto_0

    .line 110
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 115
    goto :goto_0

    .line 102
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    :pswitch_3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->getRcsContactsOnline()Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 105
    goto :goto_0

    .line 95
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    :pswitch_4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->getRcsContacts()Ljava/util/List;

    move-result-object v2

    .line 96
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 98
    goto :goto_0

    .line 86
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    :pswitch_5
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 87
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;

    move-result-object v3

    .line 89
    .local v3, "_result":Lcom/gsma/services/rcs/contact/RcsContact;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 91
    nop

    .line 140
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Lcom/gsma/services/rcs/contact/RcsContact;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
