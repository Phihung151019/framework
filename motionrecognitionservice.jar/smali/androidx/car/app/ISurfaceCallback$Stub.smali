.class public abstract Landroidx/car/app/ISurfaceCallback$Stub;
.super Landroid/os/Binder;
.source "ISurfaceCallback.java"

# interfaces
.implements Landroidx/car/app/ISurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/ISurfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/ISurfaceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onClick:I = 0x9

.field static final TRANSACTION_onFling:I = 0x7

.field static final TRANSACTION_onScale:I = 0x8

.field static final TRANSACTION_onScroll:I = 0x6

.field static final TRANSACTION_onStableAreaChanged:I = 0x4

.field static final TRANSACTION_onSurfaceAvailable:I = 0x2

.field static final TRANSACTION_onSurfaceDestroyed:I = 0x5

.field static final TRANSACTION_onVisibleAreaChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    sget-object v0, Landroidx/car/app/ISurfaceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroidx/car/app/ISurfaceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/car/app/ISurfaceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Landroidx/car/app/ISurfaceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/car/app/ISurfaceCallback;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Landroidx/car/app/ISurfaceCallback;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Landroidx/car/app/ISurfaceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/car/app/ISurfaceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
    return-object p0
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

    .line 77
    sget-object v0, Landroidx/car/app/ISurfaceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 89
    packed-switch p1, :pswitch_data_1

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 85
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 159
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 161
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 162
    .local v3, "_arg1":F
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ISurfaceCallback$Stub;->onClick(FF)V

    .line 163
    goto/16 :goto_0

    .line 148
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 150
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 152
    .restart local v3    # "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 153
    .local v4, "_arg2":F
    invoke-virtual {p0, v2, v3, v4}, Landroidx/car/app/ISurfaceCallback$Stub;->onScale(FFF)V

    .line 154
    goto :goto_0

    .line 139
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 141
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 142
    .restart local v3    # "_arg1":F
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ISurfaceCallback$Stub;->onFling(FF)V

    .line 143
    goto :goto_0

    .line 130
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 132
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 133
    .restart local v3    # "_arg1":F
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ISurfaceCallback$Stub;->onScroll(FF)V

    .line 134
    goto :goto_0

    .line 121
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    :pswitch_5
    sget-object v2, Landroidx/car/app/serialization/Bundleable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/ISurfaceCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/serialization/Bundleable;

    .line 123
    .local v2, "_arg0":Landroidx/car/app/serialization/Bundleable;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v3

    .line 124
    .local v3, "_arg1":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ISurfaceCallback$Stub;->onSurfaceDestroyed(Landroidx/car/app/serialization/Bundleable;Landroidx/car/app/IOnDoneCallback;)V

    .line 125
    goto :goto_0

    .line 112
    .end local v2    # "_arg0":Landroidx/car/app/serialization/Bundleable;
    .end local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    :pswitch_6
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/ISurfaceCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 114
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v3

    .line 115
    .restart local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ISurfaceCallback$Stub;->onStableAreaChanged(Landroid/graphics/Rect;Landroidx/car/app/IOnDoneCallback;)V

    .line 116
    goto :goto_0

    .line 103
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    .end local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    :pswitch_7
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/ISurfaceCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 105
    .restart local v2    # "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v3

    .line 106
    .restart local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ISurfaceCallback$Stub;->onVisibleAreaChanged(Landroid/graphics/Rect;Landroidx/car/app/IOnDoneCallback;)V

    .line 107
    goto :goto_0

    .line 94
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    .end local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    :pswitch_8
    sget-object v2, Landroidx/car/app/serialization/Bundleable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/ISurfaceCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/serialization/Bundleable;

    .line 96
    .local v2, "_arg0":Landroidx/car/app/serialization/Bundleable;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/car/app/IOnDoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v3

    .line 97
    .restart local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/ISurfaceCallback$Stub;->onSurfaceAvailable(Landroidx/car/app/serialization/Bundleable;Landroidx/car/app/IOnDoneCallback;)V

    .line 98
    nop

    .line 170
    .end local v2    # "_arg0":Landroidx/car/app/serialization/Bundleable;
    .end local v3    # "_arg1":Landroidx/car/app/IOnDoneCallback;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
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
