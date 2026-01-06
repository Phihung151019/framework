.class public abstract Landroid/os/IZtdListener$Stub;
.super Landroid/os/Binder;
.source "IZtdListener.java"

# interfaces
.implements Landroid/os/IZtdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IZtdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IZtdListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onSysDataTraced:I = 0x1

.field static final TRANSACTION_onUnauthorizedAccessDetected:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.os.IZtdListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IZtdListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IZtdListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "android.os.IZtdListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IZtdListener;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/os/IZtdListener;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Landroid/os/IZtdListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IZtdListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 53
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    move/from16 v0, p1

    const-string v1, "android.os.IZtdListener"

    .line 58
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const v3, 0xffffff

    if-gt v0, v3, :cond_0

    .line 59
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    move-object/from16 v3, p2

    .line 61
    :goto_0
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1

    .line 62
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v2

    .line 65
    :cond_1
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 83
    :pswitch_0
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 85
    .local v6, "_arg0":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 87
    .local v7, "_arg1":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 89
    .local v8, "_arg2":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 91
    .local v9, "_arg3":J
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 93
    .local v11, "_arg4":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 95
    .local v12, "_arg5":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "_arg6":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 98
    .local v14, "_arg7":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    move-object v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/os/IZtdListener$Stub;->onUnauthorizedAccessDetected(IIIJIILjava/lang/String;Ljava/lang/String;)V

    .line 100
    goto :goto_1

    .line 70
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":J
    .end local v11    # "_arg4":I
    .end local v12    # "_arg5":I
    .end local v13    # "_arg6":Ljava/lang/String;
    .end local v14    # "_arg7":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 72
    .restart local v6    # "_arg0":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 74
    .restart local v7    # "_arg1":I
    invoke-virtual {v3}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "_arg2":[Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 76
    invoke-virtual {p0, v6, v7, v8}, Landroid/os/IZtdListener$Stub;->onSysDataTraced(II[Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    nop

    .line 107
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":[Ljava/lang/String;
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
