.class Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Landroid/app/UiAutomation$AccessibilityEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/InteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForAllEventPredicate"
.end annotation


# instance fields
.field mMask:I


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/InteractionController;
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    .line 124
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 129
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 131
    iget v0, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    iput v0, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    .line 134
    iget v0, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    if-eqz v0, :cond_0

    .line 135
    return v1

    .line 138
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_1
    return v1
.end method
