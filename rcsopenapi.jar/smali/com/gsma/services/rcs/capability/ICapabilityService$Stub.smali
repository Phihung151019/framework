.class public abstract Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;
.super Landroid/os/Binder;
.source "ICapabilityService.java"

# interfaces
.implements Lcom/gsma/services/rcs/capability/ICapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/capability/ICapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addCapabilitiesListener:I = 0x8

.field static final TRANSACTION_addContactCapabilitiesListener:I = 0xa

.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_getContactCapabilities:I = 0x5

.field static final TRANSACTION_getMyCapabilities:I = 0x4

.field static final TRANSACTION_getServiceVersion:I = 0xc

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeCapabilitiesListener:I = 0x9

.field static final TRANSACTION_removeContactCapabilitiesListener:I = 0xb

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_requestAllContactsCapabilities:I = 0x7

.field static final TRANSACTION_requestContactCapabilities:I = 0x6

.field static final TRANSACTION_setUserActive:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "com.gsma.services.rcs.capability.ICapabilityService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilityService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    const-string v0, "com.gsma.services.rcs.capability.ICapabilityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/capability/ICapabilityService;

    return-object v1

    .line 86
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 90
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

    .line 94
    const-string v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 102
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 211
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 212
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->setUserActive(Z)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto/16 :goto_0

    .line 203
    .end local v2    # "_arg0":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->getServiceVersion()I

    move-result v2

    .line 204
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    goto/16 :goto_0

    .line 193
    .end local v2    # "_result":I
    :pswitch_2
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 195
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v3

    .line 196
    .local v3, "_arg1":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->removeContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto/16 :goto_0

    .line 182
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    :pswitch_3
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 184
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v3

    .line 185
    .restart local v3    # "_arg1":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->addContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto/16 :goto_0

    .line 173
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v2

    .line 174
    .local v2, "_arg0":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto/16 :goto_0

    .line 164
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v2

    .line 165
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    :pswitch_6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->requestAllContactsCapabilities()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_0

    .line 149
    :pswitch_7
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 150
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->requestContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_0

    .line 139
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_8
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 140
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v3

    .line 142
    .local v3, "_result":Lcom/gsma/services/rcs/capability/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    goto :goto_0

    .line 131
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Lcom/gsma/services/rcs/capability/Capabilities;
    :pswitch_9
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2

    .line 132
    .local v2, "_result":Lcom/gsma/services/rcs/capability/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 134
    goto :goto_0

    .line 123
    .end local v2    # "_result":Lcom/gsma/services/rcs/capability/Capabilities;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 124
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_0

    .line 114
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    goto :goto_0

    .line 106
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 107
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    nop

    .line 222
    .end local v2    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
