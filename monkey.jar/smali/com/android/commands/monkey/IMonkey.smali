.class public interface abstract Lcom/android/commands/monkey/IMonkey;
.super Ljava/lang/Object;
.source "IMonkey.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/IMonkey$Stub;,
        Lcom/android/commands/monkey/IMonkey$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.commands.monkey.IMonkey"


# virtual methods
.method public abstract writeTouchEvent(IIIFFFFJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
