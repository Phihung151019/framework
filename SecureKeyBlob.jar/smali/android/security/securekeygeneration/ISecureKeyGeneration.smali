.class public interface abstract Landroid/security/securekeygeneration/ISecureKeyGeneration;
.super Ljava/lang/Object;
.source "ISecureKeyGeneration.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/securekeygeneration/ISecureKeyGeneration$Stub;,
        Landroid/security/securekeygeneration/ISecureKeyGeneration$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.security.securekeygeneration.ISecureKeyGeneration"


# virtual methods
.method public abstract generateSecureKey([Landroid/hardware/security/keymint/KeyParameter;[Landroid/hardware/security/keymint/KeyParameter;)Landroid/security/securekeygeneration/SecureKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
