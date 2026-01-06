.class public interface abstract Landroid/security/samsungpqcoperation/ISamsungPqcOperation;
.super Ljava/lang/Object;
.source "ISamsungPqcOperation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Stub;,
        Landroid/security/samsungpqcoperation/ISamsungPqcOperation$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.security.samsungpqcoperation.ISamsungPqcOperation"


# virtual methods
.method public abstract deleteAllKey()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract generateKey(Landroid/system/keystore2/KeyDescriptor;[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
