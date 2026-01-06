.class public abstract Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IChatServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getChatTimeout:I = 0x3

.field static final TRANSACTION_getGeolocExpirationTime:I = 0xe

.field static final TRANSACTION_getGeolocLabelMaxLength:I = 0xd

.field static final TRANSACTION_getGroupChatMaxParticipants:I = 0x4

.field static final TRANSACTION_getGroupChatMessageMaxLength:I = 0x7

.field static final TRANSACTION_getGroupChatMinParticipants:I = 0x5

.field static final TRANSACTION_getGroupChatSubjectMaxLength:I = 0x8

.field static final TRANSACTION_getIsComposingTimeout:I = 0xc

.field static final TRANSACTION_getOneToOneChatMessageMaxLength:I = 0x6

.field static final TRANSACTION_isChatSf:I = 0x1

.field static final TRANSACTION_isChatWarnSF:I = 0x2

.field static final TRANSACTION_isGroupChatSupported:I = 0xf

.field static final TRANSACTION_isRespondToDisplayReportsEnabled:I = 0xa

.field static final TRANSACTION_isSmsFallback:I = 0x9

.field static final TRANSACTION_setRespondToDisplayReports:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 87
    const-string v0, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    const-string v0, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 99
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v1, :cond_1

    .line 100
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    return-object v1

    .line 102
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 106
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

    .line 110
    const-string v0, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    .line 111
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 112
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 115
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 118
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 222
    :pswitch_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isGroupChatSupported()Z

    move-result v2

    .line 223
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 225
    goto/16 :goto_0

    .line 215
    .end local v2    # "_result":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGeolocExpirationTime()I

    move-result v2

    .line 216
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    goto/16 :goto_0

    .line 208
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGeolocLabelMaxLength()I

    move-result v2

    .line 209
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    goto/16 :goto_0

    .line 201
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getIsComposingTimeout()I

    move-result v2

    .line 202
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    goto/16 :goto_0

    .line 193
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 194
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->setRespondToDisplayReports(Z)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto/16 :goto_0

    .line 185
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isRespondToDisplayReportsEnabled()Z

    move-result v2

    .line 186
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 188
    goto :goto_0

    .line 178
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isSmsFallback()Z

    move-result v2

    .line 179
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 181
    goto :goto_0

    .line 171
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatSubjectMaxLength()I

    move-result v2

    .line 172
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    goto :goto_0

    .line 164
    .end local v2    # "_result":I
    :pswitch_8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMessageMaxLength()I

    move-result v2

    .line 165
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    goto :goto_0

    .line 157
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getOneToOneChatMessageMaxLength()I

    move-result v2

    .line 158
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    goto :goto_0

    .line 150
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMinParticipants()I

    move-result v2

    .line 151
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    goto :goto_0

    .line 143
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMaxParticipants()I

    move-result v2

    .line 144
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    goto :goto_0

    .line 136
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getChatTimeout()I

    move-result v2

    .line 137
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    goto :goto_0

    .line 129
    .end local v2    # "_result":I
    :pswitch_d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isChatWarnSF()Z

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
    :pswitch_e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isChatSf()Z

    move-result v2

    .line 123
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 125
    nop

    .line 232
    .end local v2    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
