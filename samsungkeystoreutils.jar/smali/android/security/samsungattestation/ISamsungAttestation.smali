.class public interface abstract Landroid/security/samsungattestation/ISamsungAttestation;
.super Ljava/lang/Object;
.source "ISamsungAttestation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/samsungattestation/ISamsungAttestation$Stub;,
        Landroid/security/samsungattestation/ISamsungAttestation$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.security.samsungattestation.ISamsungAttestation"


# virtual methods
.method public abstract attestKey(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)[Landroid/hardware/security/keymint/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
