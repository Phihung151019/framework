.class public abstract Lcom/sec/ims/mdmi/IMdmiEventListener$Stub;
.super Landroid/os/Binder;
.source "IMdmiEventListener.java"

# interfaces
.implements Lcom/sec/ims/mdmi/IMdmiEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/mdmi/IMdmiEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onE911StatsUpdated:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.sec.ims.mdmi.IMdmiEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/mdmi/IMdmiEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    const-string v0, "com.sec.ims.mdmi.IMdmiEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcom/sec/ims/mdmi/IMdmiEventListener;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/sec/ims/mdmi/IMdmiEventListener;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    .line 55
    const-string v1, "com.sec.ims.mdmi.IMdmiEventListener"

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const v3, 0xffffff

    if-gt v0, v3, :cond_0

    move-object/from16 v3, p2

    .line 56
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1

    move-object/from16 v4, p3

    .line 59
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    move-object/from16 v4, p3

    if-eq v0, v2, :cond_2

    .line 89
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 67
    :cond_2
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 69
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 71
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 73
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 75
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 77
    invoke-virtual {v3}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 79
    invoke-virtual {v3}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 81
    invoke-virtual {v3}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 82
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v5, p0

    .line 83
    invoke-interface/range {v5 .. v21}, Lcom/sec/ims/mdmi/IMdmiEventListener;->onE911StatsUpdated(JJJJJDDD)V

    .line 84
    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    return v2
.end method
