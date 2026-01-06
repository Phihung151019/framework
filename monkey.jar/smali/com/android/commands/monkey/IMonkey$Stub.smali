.class public abstract Lcom/android/commands/monkey/IMonkey$Stub;
.super Landroid/os/Binder;
.source "IMonkey.java"

# interfaces
.implements Lcom/android/commands/monkey/IMonkey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/IMonkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/IMonkey$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_writeTouchEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "com.android.commands.monkey.IMonkey"

    invoke-virtual {p0, p0, v0}, Lcom/android/commands/monkey/IMonkey$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/commands/monkey/IMonkey;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "com.android.commands.monkey.IMonkey"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/commands/monkey/IMonkey;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/android/commands/monkey/IMonkey;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Lcom/android/commands/monkey/IMonkey$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/commands/monkey/IMonkey$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 57
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    move/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "com.android.commands.monkey.IMonkey"

    .line 62
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 63
    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    move-object/from16 v4, p2

    .line 65
    :goto_0
    const v5, 0x5f4e5446

    if-ne v0, v5, :cond_1

    .line 66
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v3

    .line 69
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 97
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 74
    :pswitch_0
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 76
    .local v7, "_arg0":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 78
    .local v8, "_arg1":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 80
    .local v9, "_arg2":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 82
    .local v10, "_arg3":F
    invoke-virtual {v4}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 84
    .local v11, "_arg4":F
    invoke-virtual {v4}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 86
    .local v12, "_arg5":F
    invoke-virtual {v4}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    .line 88
    .local v13, "_arg6":F
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 89
    .local v14, "_arg7":J
    invoke-virtual {v4}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/android/commands/monkey/IMonkey$Stub;->writeTouchEvent(IIIFFFFJ)Z

    move-result v5

    .line 91
    .local v5, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 93
    nop

    .line 100
    .end local v5    # "_result":Z
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":F
    .end local v11    # "_arg4":F
    .end local v12    # "_arg5":F
    .end local v13    # "_arg6":F
    .end local v14    # "_arg7":J
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
