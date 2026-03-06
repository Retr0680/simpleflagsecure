.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/hardware/input/IKeyEventActivityListener;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/input/IKeyEventActivityListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda9;->f$0:Landroid/hardware/input/IKeyEventActivityListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda9;->f$0:Landroid/hardware/input/IKeyEventActivityListener;

    check-cast p1, Landroid/hardware/input/IKeyEventActivityListener;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->$r8$lambda$fOjwyWaRSOqSofpA-1hKOuhc0Ug(Landroid/hardware/input/IKeyEventActivityListener;Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result p1

    return p1
.end method
