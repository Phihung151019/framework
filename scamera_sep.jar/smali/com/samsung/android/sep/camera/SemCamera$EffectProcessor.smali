.class public final Lcom/samsung/android/sep/camera/SemCamera$EffectProcessor;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EffectProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 231
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCamera$EffectProcessor;, "Lcom/samsung/android/sep/camera/SemCamera$EffectProcessor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCamera$EffectProcessor;->mName:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 241
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCamera$EffectProcessor;, "Lcom/samsung/android/sep/camera/SemCamera$EffectProcessor<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCamera$EffectProcessor;->mName:Ljava/lang/String;

    return-object v0
.end method
