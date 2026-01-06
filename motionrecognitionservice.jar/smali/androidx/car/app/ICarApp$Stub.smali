.class public abstract Landroidx/car/app/ICarApp$Stub;
.super Landroid/os/Binder;
.source "ICarApp.java"

# interfaces
.implements Landroidx/car/app/ICarApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/ICarApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/ICarApp$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAppInfo:I = 0xa

.field static final TRANSACTION_getManager:I = 0x9

.field static final TRANSACTION_onAppCreate:I = 0x2

.field static final TRANSACTION_onAppPause:I = 0x5

.field static final TRANSACTION_onAppResume:I = 0x4

.field static final TRANSACTION_onAppStart:I = 0x3

.field static final TRANSACTION_onAppStop:I = 0x6

.field static final TRANSACTION_onConfigurationChanged:I = 0x8

.field static final TRANSACTION_onHandshakeCompleted:I = 0xb

.field static final TRANSACTION_onNewIntent:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    sget-object v0, Landroidx/car/app/ICarApp$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroidx/car/app/ICarApp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/car/app/ICarApp;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    sget-object v0, Landroidx/car/app/ICarApp$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/car/app/ICarApp;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, v0

    check-cast v1, Landroidx/car/app/ICarApp;

    return-object v1

    .line 88
    :cond_1
    new-instance v1, Landroidx/car/app/ICarApp$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/car/app/ICarApp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 92
    return-object p0
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

    .line 96
    sget-object v0, Landroidx/car/app/ICarApp$Stub;->DESCRIPTOR:Ljava/lang/String;

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
    packed-switch p1, :pswitch_data_0

    .line 108
    packed-switch p1, :pswitch_data_1

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 188
    :pswitch_1
    sget-object v2, Landroidx/car/app/serialization/Bundleable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/ICarApp$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/serialization/Bundleable;

    .line 190
    .local v2, "_arg0":Landroidx/car/app/serialization/Bundleable;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v3

    .line 191
    .local v3, "_arg1":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ICarApp$Stub;->onHandshakeCompleted(Landroidx/car/app/serialization/Bundleable;Landroidx/car/app/IOnDoneCallback;)V

    .line 192
    goto/16 :goto_0

    .line 181
    .end local v2    # "_arg0":Landroidx/car/app/serialization/Bundleable;
    .end local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v2

    .line 182
    .local v2, "_arg0":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2}, Landroidx/car/app/ICarApp$Stub;->getAppInfo(Landroidx/car/app/IOnDoneCallback;)V

    .line 183
    goto/16 :goto_0

    .line 172
    .end local v2    # "_arg0":Landroidx/car/app/IOnDoneCallback;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v3

    .line 175
    .restart local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ICarApp$Stub;->getManager(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V

    .line 176
    goto/16 :goto_0

    .line 163
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    :pswitch_4
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/ICarApp$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 165
    .local v2, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v3

    .line 166
    .restart local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ICarApp$Stub;->onConfigurationChanged(Landroid/content/res/Configuration;Landroidx/car/app/IOnDoneCallback;)V

    .line 167
    goto :goto_0

    .line 154
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    :pswitch_5
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/ICarApp$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 156
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v3

    .line 157
    .restart local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ICarApp$Stub;->onNewIntent(Landroid/content/Intent;Landroidx/car/app/IOnDoneCallback;)V

    .line 158
    goto :goto_0

    .line 147
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v2

    .line 148
    .local v2, "_arg0":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2}, Landroidx/car/app/ICarApp$Stub;->onAppStop(Landroidx/car/app/IOnDoneCallback;)V

    .line 149
    goto :goto_0

    .line 140
    .end local v2    # "_arg0":Landroidx/car/app/IOnDoneCallback;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v2

    .line 141
    .restart local v2    # "_arg0":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2}, Landroidx/car/app/ICarApp$Stub;->onAppPause(Landroidx/car/app/IOnDoneCallback;)V

    .line 142
    goto :goto_0

    .line 133
    .end local v2    # "_arg0":Landroidx/car/app/IOnDoneCallback;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v2

    .line 134
    .restart local v2    # "_arg0":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2}, Landroidx/car/app/ICarApp$Stub;->onAppResume(Landroidx/car/app/IOnDoneCallback;)V

    .line 135
    goto :goto_0

    .line 126
    .end local v2    # "_arg0":Landroidx/car/app/IOnDoneCallback;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v2

    .line 127
    .restart local v2    # "_arg0":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2}, Landroidx/car/app/ICarApp$Stub;->onAppStart(Landroidx/car/app/IOnDoneCallback;)V

    .line 128
    goto :goto_0

    .line 113
    .end local v2    # "_arg0":Landroidx/car/app/IOnDoneCallback;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroidx/car/app/ICarHost$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/ICarHost;

    move-result-object v2

    .line 115
    .local v2, "_arg0":Landroidx/car/app/ICarHost;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Landroidx/car/app/ICarApp$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 117
    .local v3, "_arg1":Landroid/content/Intent;
    sget-object v4, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Landroidx/car/app/ICarApp$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 119
    .local v4, "_arg2":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v5

    .line 120
    .local v5, "_arg3":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroidx/car/app/ICarApp$Stub;->onAppCreate(Landroidx/car/app/ICarHost;Landroid/content/Intent;Landroid/content/res/Configuration;Landroidx/car/app/IOnDoneCallback;)V

    .line 121
    nop

    .line 199
    .end local v2    # "_arg0":Landroidx/car/app/ICarHost;
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":Landroid/content/res/Configuration;
    .end local v5    # "_arg3":Landroidx/car/app/IOnDoneCallback;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
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
    .end packed-switch
.end method
