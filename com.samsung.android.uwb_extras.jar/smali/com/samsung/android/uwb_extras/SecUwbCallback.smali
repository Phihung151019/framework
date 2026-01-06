.class public abstract Lcom/samsung/android/uwb_extras/SecUwbCallback;
.super Ljava/lang/Object;
.source "SecUwbCallback.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist notifySessionToken(II)V
.end method

.method public abstract blacklist onNotification(II[B)V
.end method
