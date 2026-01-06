.class public abstract Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;
.super Landroid/os/Binder;
.source "IPerfSDKService.java"

# interfaces
.implements Lcom/samsung/android/perfsdkservice/IPerfSDKService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/perfsdkservice/IPerfSDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_connectionRequest:I = 0xa

.field static final TRANSACTION_getAllowedPkgName:I = 0x2

.field static final TRANSACTION_getChangedForegroundPackagename:I = 0x7

.field static final TRANSACTION_getForegroundPackagename:I = 0x6

.field static final TRANSACTION_getHighBoostingLevel:I = 0x3

.field static final TRANSACTION_getLowBoostingLevel:I = 0x4

.field static final TRANSACTION_getThermalTable:I = 0x5

.field static final TRANSACTION_initPerfSDK:I = 0x1

.field static final TRANSACTION_removeSessionKey:I = 0x9

.field static final TRANSACTION_setSessionKey:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "com.samsung.android.perfsdkservice.IPerfSDKService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/perfsdkservice/IPerfSDKService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    const-string v0, "com.samsung.android.perfsdkservice.IPerfSDKService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/perfsdkservice/IPerfSDKService;

    if-eqz v1, :cond_1

    .line 82
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/perfsdkservice/IPerfSDKService;

    return-object v1

    .line 84
    :cond_1
    new-instance v1, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 88
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

    .line 92
    const-string v0, "com.samsung.android.perfsdkservice.IPerfSDKService"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 173
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->connectionRequest()I

    move-result v2

    .line 174
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    goto/16 :goto_0

    .line 165
    .end local v2    # "_result":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->removeSessionKey(Ljava/lang/String;)I

    move-result v3

    .line 167
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->setSessionKey(Ljava/lang/String;)I

    move-result v3

    .line 158
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    goto :goto_0

    .line 148
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getChangedForegroundPackagename()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    goto :goto_0

    .line 141
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getForegroundPackagename()Ljava/lang/String;

    move-result-object v2

    .line 142
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    goto :goto_0

    .line 134
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getThermalTable()[I

    move-result-object v2

    .line 135
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 137
    goto :goto_0

    .line 127
    .end local v2    # "_result":[I
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getLowBoostingLevel()[I

    move-result-object v2

    .line 128
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 130
    goto :goto_0

    .line 120
    .end local v2    # "_result":[I
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getHighBoostingLevel()[I

    move-result-object v2

    .line 121
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 123
    goto :goto_0

    .line 113
    .end local v2    # "_result":[I
    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getAllowedPkgName()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    goto :goto_0

    .line 105
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->initPerfSDK(Ljava/lang/String;)I

    move-result v3

    .line 107
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    nop

    .line 183
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
